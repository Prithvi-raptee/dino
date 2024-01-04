// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LiveChatSupportDataModel {
  String time;
  bool sendByYou;
  String msg;
  LiveChatSupportDataModel({
    required this.time,
    required this.sendByYou,
    required this.msg,
  });

  LiveChatSupportDataModel copyWith({
    String? time,
    bool? sendByYou,
    String? msg,
  }) {
    return LiveChatSupportDataModel(
      time: time ?? this.time,
      sendByYou: sendByYou ?? this.sendByYou,
      msg: msg ?? this.msg,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'sendByYou': sendByYou,
      'msg': msg,
    };
  }

  factory LiveChatSupportDataModel.fromMap(Map<String, dynamic> map) {
    return LiveChatSupportDataModel(
      time: map['time'] as String,
      sendByYou: map['sendByYou'] as bool,
      msg: map['msg'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LiveChatSupportDataModel.fromJson(String source) =>
      LiveChatSupportDataModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'LiveChatSupportDataModel(time: $time, sendByYou: $sendByYou, msg: $msg)';

  @override
  bool operator ==(covariant LiveChatSupportDataModel other) {
    if (identical(this, other)) return true;

    return other.time == time &&
        other.sendByYou == sendByYou &&
        other.msg == msg;
  }

  @override
  int get hashCode => time.hashCode ^ sendByYou.hashCode ^ msg.hashCode;
}
