defmodule RedirectDemoWeb.NoFlashLive.Show do
  @moduledoc false
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
      <p>Where is the flash message?</p>
    """
  end
end
