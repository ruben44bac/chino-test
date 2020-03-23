defmodule LiveViewCounterWeb.PageView do
  use LiveViewCounterWeb, :view
end
defmodule LiveViewCounterWeb.PageLiveView do
  use Phoenix.LiveView
  def render(assigns) do
    Phoenix.View.render(LiveViewCounterWeb.PageView, "index.html", assigns)
  end

  def mount(_session, socket) do    
    {:ok, socket}
  end
end