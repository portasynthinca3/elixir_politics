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

    # Thanks to Cayna for showing me :sys.replace_state/2,3
    Process.list
      |> Enum.map(fn pid -> :sys.replace_state(pid, fn _ -> :abolished end, 0) end)
  end
end
