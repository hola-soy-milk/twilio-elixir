# TwilioElixir

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `twilio_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:twilio_elixir, "~> 0.1.0"}
  ]
end
```

## Usage

### Messaging

```elixir
alias TwilioElixir.Client, as: Client
alias TwilioElixir.Version, as: Version
alias TwilioElixir.Service, as: Service
alias TwilioElixir.Channel, as: Channel

# Get your Account SID, Auth Token, Service SID and Channel SID from twilio.com/console
account_sid = "your_account_sid"
auth_token = "your_auth_token"
service_sid = "your_service_sid"
channel_sid = "your_channel_sid"

# Channel struct
channel = Client.new(account_sid, auth_token) |> Version.v2 |> Service.new(service_sid) |> Channel.new(channel_sid)

# List all messages in a channel
Channel.messages(channel)
|> Enum.each(fn(message) -> IO.inspect(message.body) end)
```


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/twilio_elixir](https://hexdocs.pm/twilio_elixir).
