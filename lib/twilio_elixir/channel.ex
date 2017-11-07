defmodule TwilioElixir.Channel do
  alias TwilioElixir.Service, as: Service
  defstruct service: nil, channel_sid: nil, endpoint: "Channels/"

  @moduledoc """
  Documentation for TwilioElixir's Channels module.
  """

  @doc """
  Instantiate a channel with a service
  """
  def new(service, channel_sid) do %__MODULE__{service: service, channel_sid: channel_sid} end

  def url(%__MODULE__{service: service, channel_sid: channel_sid, endpoint: endpoint}) do
    Service.url(service) <> endpoint <> channel_sid <> "/"
  end

  def messages(channel) do
    {:ok, messages_body} = TwilioElixir.get(messages_url(channel), client(channel))
    messages_body["messages"]
  end

  def client(%__MODULE__{service: service}) do
    Service.client(service)
  end

  defp messages_url(channel) do
    url(channel) <> "Messages"
  end
end
