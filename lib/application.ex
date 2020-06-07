defmodule ReleaseMe.Application do
  use Application

  def start(_type, _args) do
    children = [ReleaseMe.Server]
    Supervisor.start_link(children, strategy: :one_for_one, name: ReleaseMe.Supervisor)
  end
end

defmodule ReleaseMe.Server do
  use GenServer

  def start_link(arg) do
    IO.puts("[#{__MODULE__}]:starting")
    GenServer.start_link(__MODULE__, arg, name: __MODULE__)
  end

  @impl true
  def init(arg) do
    schedule()
    {:ok, arg}
  end

  @impl true
  def handle_info(:work, arg) do
    schedule()
    {:noreply, arg}
  end

  defp schedule() do
    IO.puts("running")
    Process.sleep(:timer.seconds(5))
    send(self(), :work)
  end
end
