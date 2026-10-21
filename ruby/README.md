# Bucket List API - Ruby Gem

Bucket List supplies a random bucket list idea for life goals, travel aspirations, and personal adventures. Call the endpoint with no parameters to receive a single activity suggestion.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_bucketlist'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_bucketlist
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_bucketlist'

# Initialize the client
client = APIVerve::Bucketlist::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({  })
  puts response["data"]
rescue APIVerve::Bucketlist::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Bucketlist::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Bucketlist::Client.new(
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
    "bucketListItem": "Go on a educational trip"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bucketlist?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/bucketlist?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/bucketlist?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
