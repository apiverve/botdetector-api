# Bot Detector API - Dart/Flutter Client

Bot Detector is an API that analyzes user agent strings to identify bots, crawlers, and automated software. Useful for security, analytics, and access control.

[![pub package](https://img.shields.io/pub/v/apiverve_botdetector.svg)](https://pub.dev/packages/apiverve_botdetector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Bot Detector API](https://apiverve.com/marketplace/botdetector?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_botdetector: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_botdetector/apiverve_botdetector.dart';

void main() async {
  final client = BotdetectorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'ua': 'Googlebot/2.1 (+http://www.google.com/bot.html)'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
      "url": "http://www.google.com/bot.html"
    }
  }
}
```

## API Reference

- **API Home:** [Bot Detector API](https://apiverve.com/marketplace/botdetector?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/botdetector](https://docs.apiverve.com/ref/botdetector?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
