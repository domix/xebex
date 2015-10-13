defmodule Xebex.Router do
  use Xebex.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Xebex do
    pipe_through :api # Use the default browser stack

    get "/", XmppController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Xebex do
  #   pipe_through :api
  # end
end
