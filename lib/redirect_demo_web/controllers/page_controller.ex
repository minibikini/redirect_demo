defmodule RedirectDemoWeb.PageController do
  use RedirectDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
