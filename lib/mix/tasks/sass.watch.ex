defmodule Mix.Tasks.Sass.Watch do
  use Mix.Task
  import Mix.Tasks.Sass

  def run(args) do
    opts = parse_opts(args)

    command = "sass --watch "<>opts[:input]<>":"<>opts[:output]

    Mix.shell.cmd(command)
  end
end
