defmodule TestRepoWeb.ViewBLive do
  use TestRepoWeb, :live_view

  def mount(params, session, socket) do
    {:ok, socket}
  end

  def handle_event("open_view_a", _parameters, socket) do
    {:noreply, push_navigate(socket, to: ~p"/view-a", replace: false)}
  end

  def handle_event("option_change", _parameters, socket) do
    {:noreply, socket}
  end
end
