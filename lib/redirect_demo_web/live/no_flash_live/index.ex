defmodule RedirectDemoWeb.NoFlashLive.Index do
  @moduledoc false
  use Phoenix.LiveView
  alias RedirectDemoWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~L"""
    <button phx-click="flash_pls">Click me!</button>
    """
  end

  def handle_event("flash_pls", _, socket) do
    to = Routes.live_path(socket, RedirectDemoWeb.NoFlashLive.Show, 42)

    {:noreply,
     socket
     |> put_flash(:info, "Can you see me?")
     |> live_redirect(to: to)}
  end
end
