/// Bot Detector API client for Dart/Flutter
///
/// Bot Detector analyzes user agent strings to identify bots, crawlers, and automated software. It matches against a database of known bots and adds heuristics that catch automated clients not in the database, returning the bot's category, reputation and a composite risk score. Useful for security, analytics, and access control.
///
/// For more information, visit: https://apiverve.com/marketplace/botdetector?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_botdetector;

export 'src/client.dart';
export 'src/models.dart';
