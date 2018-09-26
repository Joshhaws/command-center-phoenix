defmodule CommandcenterphoenixWeb.PageController do
  use CommandcenterphoenixWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def landing(conn, _params) do
    render conn, "index.html"
  end

  def about(conn, _params) do
    render conn, "index.html"
  end

  def contact(conn, _params) do
    render conn, "index.html"
  end
end
