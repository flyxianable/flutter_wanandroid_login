// To parse this JSON data, do
//
//     final wanUser = wanUserFromJson(jsonString);

import 'dart:convert';

WanUser wanUserFromJson(String str) => WanUser.fromJson(json.decode(str));

String wanUserToJson(WanUser data) => json.encode(data.toJson());

class WanUser {
  WanUser({
    this.data,
    this.errorCode = 0,
    this.errorMsg,
  });

  Data? data;
  int errorCode;
  String? errorMsg;

  factory WanUser.fromJson(Map<String, dynamic> json) => WanUser(
    data: Data.fromJson(json["data"]),
    errorCode: json["errorCode"],
    errorMsg: json["errorMsg"],
  );

  Map<String, dynamic> toJson() => {
    "data": data!.toJson(),
    "errorCode": errorCode,
    "errorMsg": errorMsg,
  };
}

class Data {
  Data({
    this.admin = false,
    this.chapterTops,
    this.coinCount = 0,
    this.collectIds,
    this.email,
    this.icon,
    this.id = 0,
    this.nickname,
    this.password,
    this.publicName,
    this.token,
    this.type = 0,
    this.username,
  });

  bool admin;
  List<dynamic>? chapterTops;
  int coinCount;
  List<dynamic>? collectIds;
  String? email;
  String? icon;
  int id;
  String? nickname;
  String? password;
  String? publicName;
  String? token;
  int type;
  String? username;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    admin: json["admin"],
    chapterTops: List<dynamic>.from(json["chapterTops"].map((x) => x)),
    coinCount: json["coinCount"],
    collectIds: List<dynamic>.from(json["collectIds"].map((x) => x)),
    email: json["email"],
    icon: json["icon"],
    id: json["id"],
    nickname: json["nickname"],
    password: json["password"],
    publicName: json["publicName"],
    token: json["token"],
    type: json["type"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "admin": admin,
    "chapterTops": List<dynamic>.from(chapterTops!.map((x) => x)),
    "coinCount": coinCount,
    "collectIds": List<dynamic>.from(collectIds!.map((x) => x)),
    "email": email,
    "icon": icon,
    "id": id,
    "nickname": nickname,
    "password": password,
    "publicName": publicName,
    "token": token,
    "type": type,
    "username": username,
  };
}
