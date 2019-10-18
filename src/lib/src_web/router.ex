defmodule SrcWeb.Router do
  use SrcWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SrcWeb do
    pipe_through :api
  end
end
