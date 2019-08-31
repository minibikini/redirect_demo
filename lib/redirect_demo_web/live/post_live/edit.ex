defmodule RedirectDemoWeb.PostLive.Edit do
  @moduledoc false
  use Phoenix.LiveView

  alias RedirectDemoWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~L"""
      <p>Refreshing every 10 seconds :(</p>
      <p><%= DateTime.utc_now() |> DateTime.to_time()  %></p>
      <p><small><%= live_link "Back to index", to: Routes.live_path(@socket, RedirectDemoWeb.PostLive.Index) %></small></p>
    """
  end

  def mount(_, socket) do
    {:ok, socket}
  end
end
