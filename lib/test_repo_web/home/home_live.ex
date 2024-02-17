defmodule TestRepoWeb.HomeLive do
  use TestRepoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("view_a", _params, socket) do
    {:noreply, push_navigate(socket, to: ~p"/view-a", replace: true)}
  end

  def handle_event("view_b", _params, socket) do
    {:noreply, push_navigate(socket, to: ~p"/view-b", replace: true)}
  end
end
