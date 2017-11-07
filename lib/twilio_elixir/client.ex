defmodule TwilioElixir.Client do
  defstruct account_sid: nil, auth_token: nil, endpoint: "https://chat.twilio.com/"

  @moduledoc """
  Documentation for TwilioElixir's Client module.
  """

  @doc """
  Instantiate a client with proper authentication
  """
  def new(account_sid, auth_token) do %__MODULE__{account_sid: account_sid, auth_token: auth_token} end

  def url(%__MODULE__{endpoint: endpoint}) do
    endpoint
  end
end
