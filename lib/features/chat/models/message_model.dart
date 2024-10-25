class MessageModel {
  final DateTime date;
  final String message;
  final String receiver;
  final String sender;
  final String userName;

  MessageModel({
    required this.date,
    required this.message,
    required this.receiver,
    required this.sender,
    required this.userName,
  });


  factory MessageModel.fromJson(Map<String, dynamic> json) {
    
    return MessageModel(
      date: DateTime.parse(json['date'] as String),
      message: json['message'] as String,
      receiver: json['receiver'] as String,
      sender: json['sender'] as String,
      userName: json['userName'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'message': message,
      'receiver': receiver,
      'sender': sender,
      'userName': userName,
    };
  }
}
