defmodule CoffeePot.Router do
  use CoffeePot.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CoffeePot do
    pipe_through :api
    match :propfind, "/", Rfc2324Controller, :options
  end
end
