defmodule Commandcenterphoenix.Accounts do
    @moduledoc """
    The Accounts context
    """

    alias Commandcenterphoenix.Accounts.User

    def list_users do
        [
            %User{id: "1", name: "Josh", username: "joshhaws"},
            %User{id: "2", name: "Hayley", username: "hayleyhaws"},
            %User{id: "2", name: "Oliver", username: "oliverhaws"}
        ]
    end

    def get_user(id) do
        Enum.find(list_users(), fn map -> map.id == id end)
    end

    def get_user_by(params) do
        Enum.find(list_users(), fn map ->
            Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
        end)
    end
end