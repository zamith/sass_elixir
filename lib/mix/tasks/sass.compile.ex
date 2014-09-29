defmodule Mix.Tasks.Sass.Compile do
  use Mix.Task
  import Mix.Tasks.Sass

  def run(args) do
    opts = parse_opts(args)

    command = "sass --update "<>opts[:input]<>":"<>opts[:output]

    Mix.shell.cmd(command)
  end
end
