/// Response models for the Bot Detector API.

/// API Response wrapper.
class BotdetectorResponse {
  final String status;
  final dynamic error;
  final BotdetectorData? data;

  BotdetectorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BotdetectorResponse.fromJson(Map<String, dynamic> json) => BotdetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BotdetectorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Bot Detector API.

class BotdetectorData {
  String? userAgent;
  bool? isBot;
  BotdetectorDataBot? bot;

  BotdetectorData({
    this.userAgent,
    this.isBot,
    this.bot,
  });

  factory BotdetectorData.fromJson(Map<String, dynamic> json) => BotdetectorData(
      userAgent: json['userAgent'],
      isBot: json['isBot'],
      bot: json['bot'] != null ? BotdetectorDataBot.fromJson(json['bot']) : null,
    );
}

class BotdetectorDataBot {
  String? name;
  String? category;
  String? url;

  BotdetectorDataBot({
    this.name,
    this.category,
    this.url,
  });

  factory BotdetectorDataBot.fromJson(Map<String, dynamic> json) => BotdetectorDataBot(
      name: json['name'],
      category: json['category'],
      url: json['url'],
    );
}

class BotdetectorRequest {
  String ua;

  BotdetectorRequest({
    required this.ua,
  });

  Map<String, dynamic> toJson() => {
      'ua': ua,
    };
}
