import 'package:flutter/material.dart';

import '../views/singup_screen.dart';
import '../widgets/login_widgets.dart';
import '../widgets/background.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with LoginWidgets {
  bool isVisible = true;

  void _visible() {
    setState(() {
          isVisible = !isVisible;
        });
    
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.10,
              ),
              logo(),
              SizedBox(
                height: size.height * 0.02,
              ),
              titleIntro(text: 'Login'),
              SizedBox(
                height: size.height * 0.02,
              ),
              inputUserName(label: "Usuário", hintText: "Digite Seu Usuário."),
              SizedBox(
                height: size.height * 0.02,
              ),
              inputPassword(
                  label: "Senha",
                  hintText: "Digite sua senha.",
                  iconView: _visible,
                  isVisible: isVisible
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              textForgetPassword(),
              SizedBox(
                height: size.height * 0.05,
              ),
              buttonSignIn(
                text: "Entar",
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              textSingUp(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SingUp()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
