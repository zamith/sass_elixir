defmodule Mix.Tasks.Sass do
  def compile(args) do
    Mix.Tasks.Sass.Compile.run(args)
  end

  def watch(args) do
    Mix.Tasks.Sass.Watch.run(args)
  end

  def parse_opts(args) do
    {opts, _, _} = OptionParser.parse args,
      switches: [input: :string, output: :string],
      aliases: [i: :input, o: :output]

    defaults = [input: "web/assets/stylesheets", output: "priv/static/css"]
    Keyword.merge(defaults, sanitize_opts(opts))
  end

  defp sanitize_opts(opts) when not is_nil(opts) do
    opts
    |> Keyword.delete(:input, nil)
    |> Keyword.delete(:output, nil)
  end
end
