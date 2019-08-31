defmodule RedirectDemoWeb.PostLive.Show do
  @moduledoc false
  use Phoenix.LiveView

  alias RedirectDemoWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~L"""
      nope
    """
  end

  def mount(_, socket) do
    {:ok, socket}
  end

  def handle_params(%{"id" => id}, _uri, socket) do
    to = Routes.live_path(socket, RedirectDemoWeb.PostLive.Edit, id)
    {:noreply, live_redirect(socket, to: to, replace: true)}
  end
end
