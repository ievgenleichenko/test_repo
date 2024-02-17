defmodule TestRepoWeb.ViewALive do
  use TestRepoWeb, :live_view

  def mount(params, session, socket) do
    {:ok, socket}
  end

  def handle_event("open_view_b", _parameters, socket) do
    {:noreply, push_navigate(socket, to: ~p"/view-b", replace: false)}
  end

  def handle_event("change_form", _parameters, socket) do
    {:noreply, socket}
  end
end
