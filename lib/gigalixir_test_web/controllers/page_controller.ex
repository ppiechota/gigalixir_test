defmodule GigalixirTestWeb.PageController do
  use GigalixirTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
