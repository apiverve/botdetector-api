# Bot Detector API - PHP Package

Bot Detector analyzes user agent strings to identify bots, crawlers, and automated software. It matches against a database of known bots and adds heuristics that catch automated clients not in the database, returning the bot's category, reputation and a composite risk score. Useful for security, analytics, and access control.

## Installation

Install via Composer:

```bash
composer require apiverve/botdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Botdetector\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['ua' => 'Googlebot/2.1 (+http://www.google.com/bot.html)']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Botdetector\Client;
use APIVerve\Botdetector\Exceptions\APIException;
use APIVerve\Botdetector\Exceptions\ValidationException;

try {
    $response = $client->execute(['ua' => 'Googlebot/2.1 (+http://www.google.com/bot.html)']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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
    "riskScore": 0,
    "riskLevel": "low"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/botdetector?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/botdetector?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/botdetector?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
