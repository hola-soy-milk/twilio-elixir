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
# Get your Account SID, Auth Token, Service SID and Channel SID from twilio.com/console
account_sid = "your_account_sid"
auth_token = "your_auth_token"
service_sid = "your_service_sid"
channel_sid = "your_channel_sid"

channel = TwilioElixir.Client.new(account_sid, auth_token)
|> TwilioElixir.Chat.new
|> TwilioElixir.V2.new
|> TwilioElixir.Services.new(service_sid)
|> TwilioElixir.Channels.list(channel_sid)

# List all messages in a channel
channel.messages
|> Enum.map(fn(message) -> IO.inspect(message.body) end)

# Send a message
channel.messages.create(body: "Hello world!")

```


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/twilio_elixir](https://hexdocs.pm/twilio_elixir).
