defmodule RedirectDemoWeb.PostLive.Index do
  @moduledoc false
  use Phoenix.LiveView
  alias RedirectDemoWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~L"""
    <%= live_link "Click Me!", to: Routes.live_path(@socket, RedirectDemoWeb.PostLive.Show, 42) %>
    """
  end

  def mount(_, socket) do
    {:ok, socket}
  end
end
