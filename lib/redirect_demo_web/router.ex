defmodule RedirectDemoWeb.Router do
  use RedirectDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RedirectDemoWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/posts", PostLive.Index
    live "/posts/:id", PostLive.Show, session: [:path_params]
    live "/posts/:id/edit", PostLive.Edit, session: [:path_params]
  end

  # Other scopes may use custom stacks.
  # scope "/api", RedirectDemoWeb do
  #   pipe_through :api
  # end
end
