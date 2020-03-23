defmodule LiveViewCounterWeb.PageController do
  use LiveViewCounterWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, LiveViewCounterWeb.PageLiveView, session: %{})
  end

end
