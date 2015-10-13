defmodule Xebex.XmppView do
  use Xebex.Web, :view

  def render("index.json", %{message: message}) do
    %{data: render_one(message, Xebex.XmppView, "xmpp.json")}
  end

  def render("xmpp.json", %{message: message}) do
    %{message: message}
  end

end
