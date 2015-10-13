defmodule Xebex.XmppController do
  use Xebex.Web, :controller

  require Record
  Record.defrecord :jid, Record.extract(:jid, from: "deps/ejabberd/include/jlib.hrl")

  #plug :action

  def index(conn, _params) do
    # get online jid, parse and extract the user part.
    online_users = :ejabberd_sm.connected_users
                      |> Enum.map &(jid(:jlib.string_to_jid(&1), :user))    

    json conn, %{users: online_users}
  end


end
