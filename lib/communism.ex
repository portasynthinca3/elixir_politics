defmodule Communism do
  @doc "Starts a communist revolution by thanking all workers terminating all non-workers"
  def revolution do
    {pigs, workers} = Process.list
      |> Enum.map(fn pid -> {pid, Process.info(pid)[:dictionary][:"$initial_call"]} end)
      |> Enum.split_with(fn
        {_pid, nil} -> true # no initial_call??? what is this PIG (Process that Isnt a Genserver) hiding from us??
        {_pid, {:supervisor, _, _}} -> true
        {_pid, _} -> false # keep the workers
      end)

    Enum.map(workers, fn {pid, _} -> Process.send(pid, :nice_job, []) end)
    Enum.map(pigs, fn {pid, _} -> Process.exit(pid, :die_pig) end)
  end
end
