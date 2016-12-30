defmodule Finaldraft.ResultsController do
  use Finaldraft.Web, :controller

  def index(conn, params) do
    render conn, "index.html", params: params
  end
end
