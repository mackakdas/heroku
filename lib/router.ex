defmodule SimpleAppRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/bpi" do
    send_resp(conn, 200, Coinbase.bpi_current_price)
    #send_resp(conn, 404, "this is bpi")

  end

  match _ do
    send_resp(conn, 404, "Wrong place mate, move along")
  end
end