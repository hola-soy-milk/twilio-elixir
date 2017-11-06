defmodule TwilioElixir do
  #Tentacat.Client.new(%{user: "user", password: "password"})
  @moduledoc """
  Documentation for TwilioElixir.
  """

  @doc """
  Perform a get request
  """
  def get(path, client, params \\ [], options \\ []) do
    #curl -XPOST https://chat.twilio.com/v2/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Users \
    #-d "Identity=allan" \
    #-u '{twilio account sid}:{twilio auth token}'
    url =
      client
      |> url(path)
      |> add_params_to_url(params)
  end

  def post(path) do

  end
end
