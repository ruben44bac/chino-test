defmodule LiveViewCounterWeb.PageView do
  use LiveViewCounterWeb, :view
end

defmodule LiveViewCounterWeb.PageLiveView do
  use Phoenix.LiveView
  def render(assigns) do
    Phoenix.View.render(LiveViewCounterWeb.PageView, "index.html", assigns)
  end

  def mount(_params, _session, socket) do
    IO.inspect("testerrr")
    {:ok, assign(socket, val: 0)}
  end

  def handle_event("inc", _value, socket) do
    IO.inspect("testerrr")
    {:noreply, assign(socket, val: socket.assigns.val + 1 )}
  end

  def handle_event("dec", _value, socket) do
    IO.inspect("testerrr dec")
    {:noreply, assign(socket, val: socket.assigns.val - 1 )}
  end

end