defmodule TwilioElixirTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  doctest TwilioElixir

  alias TwilioElixir.Client, as: Client
  alias TwilioElixir.Version, as: Version
  alias TwilioElixir.Service, as: Service
  alias TwilioElixir.Channel, as: Channel

  # Get your Account SID, Auth Token, Service SID and Channel SID from twilio.com/console
  @account_sid "account_sid"
  @auth_token "auth_token"
  @service_sid "service_sid"
  @channel_sid "channel_sid"
  @channel Client.new(@account_sid, @auth_token) |> Version.v2 |> Service.new(@service_sid) |> Channel.new(@channel_sid)

  #setup_all do
    #HTTPoison.start
  #end

  test "greets the world" do
    HTTPoison.start
    use_cassette "messages/list_messages" do
      assert(Channel.messages(@channel) == [
        %TwilioElixir.Message {
          body: "Hello",
          was_edited: false,
          recipient: @channel_sid,
          sid: "message_sid",
          date_created: "2017-11-07T08:49:15Z",
          date_updated: "2017-11-07T08:49:15Z"
        },
        %TwilioElixir.Message {
          body: "Sup",
          was_edited: false,
          recipient: @channel_sid,
          sid: "message_sid",
          date_created: "2017-11-07T08:49:39Z",
          date_updated: "2017-11-07T08:49:39Z"
        }
      ])
    end
  end
end
