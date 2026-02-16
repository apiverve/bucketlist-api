# Bucket List API - Dart/Flutter Client

Bucket List is a simple tool for getting a random bucket list item. It returns a random bucket list item

[![pub package](https://img.shields.io/pub/v/apiverve_bucketlist.svg)](https://pub.dev/packages/apiverve_bucketlist)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Bucket List API](https://apiverve.com/marketplace/bucketlist?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_bucketlist: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_bucketlist/apiverve_bucketlist.dart';

void main() async {
  final client = BucketlistClient('YOUR_API_KEY');

  try {
    final response = await client.execute();

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
    "bucketListItem": "Learn to animate"
  }
}
```

## API Reference

- **API Home:** [Bucket List API](https://apiverve.com/marketplace/bucketlist?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/bucketlist](https://docs.apiverve.com/ref/bucketlist?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
