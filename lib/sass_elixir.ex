defmodule SassElixir do
  alias Mix.Tasks.Sass

  use GenServer

  @timeout 5000
  def start(args) do
    :gen_server.start(__MODULE__, args, [])
  end

  def start_link(args) do
    :gen_server.start_link(__MODULE__, args, [])
  end

  def init(args) do
    apply(Sass, args[:operation], [[
        "-i", args[:input],
        "-o", args[:output]
      ]])
    {:ok, []}
  end
end
