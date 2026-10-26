/// Response models for the Bot Detector API.

/// API Response wrapper.
class BotdetectorResponse {
  final String status;
  final dynamic error;
  final BotdetectorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BotdetectorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BotdetectorResponse.fromJson(Map<String, dynamic> json) => BotdetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BotdetectorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Bot Detector API.

class BotdetectorData {
  String? userAgent;
  bool? isBot;
  BotdetectorDataBot? bot;
  bool? isAutomated;
  bool? verified;
  num? riskScore;
  String? riskLevel;

  BotdetectorData({
    this.userAgent,
    this.isBot,
    this.bot,
    this.isAutomated,
    this.verified,
    this.riskScore,
    this.riskLevel,
  });

  factory BotdetectorData.fromJson(Map<String, dynamic> json) => BotdetectorData(
      userAgent: json['userAgent'],
      isBot: json['isBot'],
      bot: json['bot'] != null ? BotdetectorDataBot.fromJson(json['bot']) : null,
      isAutomated: json['isAutomated'],
      verified: json['verified'],
      riskScore: json['riskScore'],
      riskLevel: json['riskLevel'],
    );
}

class BotdetectorDataBot {
  String? name;
  String? category;
  String? url;
  String? reputation;
  bool? shouldBlock;

  BotdetectorDataBot({
    this.name,
    this.category,
    this.url,
    this.reputation,
    this.shouldBlock,
  });

  factory BotdetectorDataBot.fromJson(Map<String, dynamic> json) => BotdetectorDataBot(
      name: json['name'],
      category: json['category'],
      url: json['url'],
      reputation: json['reputation'],
      shouldBlock: json['shouldBlock'],
    );
}

class BotdetectorRequest {
  String ua;
  String? ip;

  BotdetectorRequest({
    required this.ua,
    this.ip,
  });

  Map<String, dynamic> toJson() => {
      'ua': ua,
      if (ip != null) 'ip': ip,
    };
}
