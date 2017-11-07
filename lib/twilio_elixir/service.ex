defmodule TwilioElixir.Service do
  alias TwilioElixir.Version, as: Version
  defstruct version: nil, service_sid: nil, endpoint: "Services/"

  @moduledoc """
  Documentation for TwilioElixir's Service module.
  """

  @doc """
  Instantiate a service with an API version and service sid
  """
  def new(version, service_sid) do %__MODULE__{version: version, service_sid: service_sid} end

  def url(%__MODULE__{version: version, service_sid: service_sid, endpoint: endpoint}) do
    Version.url(version) <> endpoint <> service_sid <> "/"
  end

  def client(%__MODULE__{version: version}) do
    Version.client(version)
  end
end
