// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.enable = false,
        this.maxAge = 0,
        this.maxCount = 0,
    });

    bool enable;
    int maxAge;
    int maxCount;

    factory User.fromJson(Map<String, dynamic> json) => User(
        enable: json["enable"],
        maxAge: json["maxAge"],
        maxCount: json["maxCount"],
    );

    Map<String, dynamic> toJson() => {
        "enable": enable,
        "maxAge": maxAge,
        "maxCount": maxCount,
    };
}

