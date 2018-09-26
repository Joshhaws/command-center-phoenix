defmodule CommandcenterphoenixWeb.Router do
  use CommandcenterphoenixWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CommandcenterphoenixWeb do
    pipe_through :browser # Use the default browser stack

    get "/users", UserController, :index
    get "/users/:id", UserController, :show
    get "/", PageController, :index
  end

  scope "/api", CommandcenterphoenixWeb do
    pipe_through :api # Use the default browser stack

    get "/landing", PageController, :landing
    get "/about", PageController, :about
    get "/contact", PageController, :contact
  end

  # Other scopes may use custom stacks.
  # scope "/api", CommandcenterphoenixWeb do
  #   pipe_through :api
  # end
end
