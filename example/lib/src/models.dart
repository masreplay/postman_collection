class AppResponse {
  final String name;
  final String version;

  const AppResponse({
    required this.name,
    required this.version,
  });

  factory AppResponse.fromJson(Map<String, dynamic> map) {
    return AppResponse(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }
}

class AppDataRequestBody {
  final DateTime date;

  AppDataRequestBody({required this.date});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'date': date.toIso8601String(),
    };
  }
}

class MessageResponse {
  final String message;

  MessageResponse({
    this.message = 'Bad Request',
  });

  factory MessageResponse.fromJson(Map<String, dynamic> map) {
    return MessageResponse(
      message: map['message'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
    };
  }
}
