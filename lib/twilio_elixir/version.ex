defmodule TwilioElixir.Version do
  alias TwilioElixir.Client, as: Client
  defstruct client: nil, endpoint: "/"

  @moduledoc """
  Documentation for TwilioElixir's Version module.
  """

  @doc """
  Instantiate a v2 endpoint with a client
  """
  def v2(client) do %__MODULE__{client: client, endpoint: "v2/"} end

  def url(%__MODULE__{client: client, endpoint: endpoint}) do
    Client.url(client) <> endpoint
  end

  def client(%__MODULE__{client: client}) do
    client
  end
end
