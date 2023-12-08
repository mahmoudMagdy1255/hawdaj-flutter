class SuccessMessageResponse {
  SuccessMessageResponse({this.status, this.message});

  SuccessMessageResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
  }

  bool? status;
  String? message;

  SuccessMessageResponse copyWith({
    bool? status,
    String? message,
  }) =>
      SuccessMessageResponse(
        status: status ?? this.status,
        message: message ?? this.message,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;

    return map;
  }
}
