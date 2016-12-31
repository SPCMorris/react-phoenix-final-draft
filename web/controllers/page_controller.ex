defmodule Finaldraft.PageController do
  use Finaldraft.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def api_call(conn, params) do
     case HTTPoison.get!("https://maps.googleapis.com/maps/api/geocode/json?address=bakersfield,ca&sensor=true") do
       {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
         IO.puts body
       {:ok, %HTTPoison.Response{status_code: 404}} ->
         IO.puts "Sorry. Nothing was found."
       {:error, %HTTPoison.Error{reason: reason}} ->
         IO.inspect reason
     end  
  end
end


