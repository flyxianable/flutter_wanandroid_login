// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.user,
        this.token,
        this.theme = 0,
        this.cache,
        this.lastLogin,
        this.locale,
    });

    String? user;
    String? token;
    int theme;
    String? cache;
    String? lastLogin;
    String? locale;

    factory User.fromJson(Map<String, dynamic> json) => User(
        user: json["user?"],
        token: json["token?"],
        theme: json["theme"],
        cache: json["cache?"],
        lastLogin: json["lastLogin?"],
        locale: json["locale?"],
    );

    Map<String, dynamic> toJson() => {
        "user?": user,
        "token?": token,
        "theme": theme,
        "cache?": cache,
        "lastLogin?": lastLogin,
        "locale?": locale,
    };
}

