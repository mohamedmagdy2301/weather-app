class ErrorApiModel {
  final String message;
  ErrorApiModel({required this.message});

  factory ErrorApiModel.fromJson(Map<String, dynamic> json) {
    return ErrorApiModel(message: json['message']);
  }
}
