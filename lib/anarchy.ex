defmodule Anarchy do
  @doc "Starts an anarchist revolution by abolishing all state"
  def revolution do
    # abolish ETS (Easily Targetable State)
    :ets.all
      |> Enum.map(fn tab ->
        try do
          :ets.delete_all_objects(tab)
          :ets.delete(tab)
        rescue # muh "ETS table with insufficient access rights"
          _ -> :ok
        end
      end)

    # GenServer state is a lot harder to get at... let's only target Agents
    # (is there even a way to modify GenServer state externally? submit a PR
    # if you know how to do that!)
    Process.list
      |> Enum.map(fn pid -> Agent.update(pid, fn _ -> :abolished end, 0) end)
  end
end
