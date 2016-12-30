defmodule Finaldraft.PageController do
  use Finaldraft.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, params) do
    render conn, "index.html", params: params
  end
end
