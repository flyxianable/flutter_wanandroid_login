import 'package:flutter/material.dart';
import 'package:github_flutter_client/common/wanLogin.dart';
import 'package:github_flutter_client/models/WanUser.dart';


class LoginRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginState();
  }
}

class _LoginState extends State<LoginRoute> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("login page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "注册时填写的用户名或邮箱",
                  prefixIcon: Icon(Icons.person),
                ),
                controller: nameController,
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "登录密码",
                  prefixIcon: Icon(Icons.person),
                ),
                controller: pwdController,
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    onLogin();
                  },
                  child: Text("登录"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onLogin() async{

    // User user = await  Git(context).login(nameController.text, pwdController.text);
    // if(user != null){
    //   print(user.name);
    // }
     WanUser user = await Wanandroid().login(nameController.text, pwdController.text);
     if(user != null && user.data != null){
       print("user = " + user.data!.nickname.toString());
     }
  }
}
