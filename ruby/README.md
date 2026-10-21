# Bot Detector API - Ruby Gem

Bot Detector analyzes user agent strings to identify bots, crawlers, and automated software. It matches against a database of known bots and adds heuristics that catch automated clients not in the database, returning the bot's category, reputation and a composite risk score. Useful for security, analytics, and access control.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_botdetector'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_botdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_botdetector'

# Initialize the client
client = APIVerve::Botdetector::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  ua: "Googlebot/2.1 (+http://www.google.com/bot.html)",
  ip: "66.249.66.1"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ua: "Googlebot/2.1 (+http://www.google.com/bot.html)", ip: "66.249.66.1" })
  puts response["data"]
rescue APIVerve::Botdetector::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Botdetector::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Botdetector::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "userAgent": "Googlebot/2.1 (+http://www.google.com/bot.html)",
    "isBot": true,
    "bot": {
      "name": "Googlebot",
      "category": "search_engine",
      "url": "http://www.google.com/bot.html",
      "reputation": "trusted",
      "shouldBlock": false
    },
    "isAutomated": true,
    "verified": true,
    "riskScore": 0,
    "riskLevel": "low"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/botdetector?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/botdetector?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/botdetector?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
