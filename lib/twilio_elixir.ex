defmodule TwilioElixir do
  @moduledoc """
  Documentation for TwilioElixir.
  """

  @doc """
  Perform a get request
  """
  def get(url, client) do
    options = [hackney: [basic_auth: {client.account_sid, client.auth_token}]]
    {:ok, response} = HTTPoison.get(url, [], options)
    IO.inspect response
    JSX.decode response.body
  end
end
