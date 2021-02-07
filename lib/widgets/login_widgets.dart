import 'package:flutter/material.dart';

class LoginWidgets {
  Widget logo({double size = 100, Color color = Colors.blue}) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.wifi,
            size: size,
            color: color,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Web \nInternet",
            style: TextStyle(
              fontSize: 26,
            ),
          )
        ],
      ),
    );
  }

  Widget titleIntro({String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget inputUserName({String label, String hintText}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: label,
          hintText: hintText),
    );
  }

  Widget inputPassword({String label, String hintText, Function iconView, bool isVisible}) {

    _iconView(){
      return IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: iconView,
          );
    }

    _iconNotView(){
      return IconButton(
            icon: Icon(Icons.visibility_off),
            onPressed: iconView,
          );
    }

    return TextField(
      obscureText: isVisible,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: label,
          hintText: hintText,
          suffixIcon: isVisible ? _iconView() : _iconNotView()),
    );
  }

  Widget buttonSignIn(
      {bool isLoading = false,
      double circular = 10.0,
      double width = double.infinity,
      double height = 50,
      Function onTap,
      String text}) {
    _loading() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }

    _text() {
      return Text(
        "Entrar",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, color: Colors.white),
      );
    }

    return InkWell(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(circular),
              color: Colors.blueAccent),
          alignment: Alignment.center,
          child: isLoading ? _loading() : _text()),
    );
  }

  Widget textForgetPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Esqueceu a senha?",
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.grey,
              fontSize: 16),
        ),
      ],
    );
  }

  Widget textSingUp(Function onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Não tem uma conta? ",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        GestureDetector(
          child: Text(
            "Cadastre-se!",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.blue[400],
                fontSize: 18),
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
