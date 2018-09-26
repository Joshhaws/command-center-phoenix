defmodule CommandcenterphoenixWeb.UserView do
    use CommandcenterphoenixWeb, :view

    alias Commandcenterphoenix.Accounts

    def first_name(%Accounts.User{name: name}) do
        name
        |> String.split(" ")
        |> Enum.at(0)
    end
end