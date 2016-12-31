defmodule Finaldraft.PageController do
  use Finaldraft.Web, :controller

  def index(conn, _params) do
    conn
      |> assign(:response, "If it all works your data will render here")
      |> render "index.html"
  end

  def api_call(conn, %{"term" => term}) do
    response = HTTPoison.get!("https://maps.googleapis.com/maps/api/geocode/json?address=" <> term <> "&sensor=true") 

    lat = "test"

    conn 
      |> assign(:response, lat)
      |> render "index.html"
  end
end
