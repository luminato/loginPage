import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/singup_widgets.dart';

class SingUp extends StatelessWidget with SingUpWidgets {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Stack(children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.08,
                ),
                logo(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Form(
                key: _form,
                child: Column(
                  children: [
                    titleIntro(text: 'Cadastro'),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    inputEmail(label: "E-mail", hintText: "Insira seu E-mail."),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    inputName(label: "Nome", hintText: "Digite seu nome."),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    inputPassword(label: "Senha", hintText: "Insira sua senha."),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    confirmPassword(
                        label: "Confirmar Senha", hintText: "Repita sua senha."),
                  ])
                  ),
                
                SizedBox(
                  height: size.height * 0.05,
                ),
                buttonSignUp(
                  onTap: (){
                    if (_form.currentState.validate()){}
                  }
                ),
              ],
            ),
          ),
          buttonReturn(() {
            Navigator.pop(context);
          }),
        ]),
      ),
    );
  }
}
