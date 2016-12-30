defmodule Finaldraft.PageController do
  use Finaldraft.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def api_call(conn, params) do
    case Finaldraft.fetch(params) do
     
  end
end
