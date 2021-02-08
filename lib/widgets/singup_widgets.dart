import 'package:flutter/material.dart';

class SingUpWidgets {
  Widget buttonReturn(Function onPressed) {
    return Positioned(
      top: 30,
      left: 5,
      child: IconButton(
        icon: Icon(Icons.arrow_back,
        size: 30,
        ),
        onPressed: onPressed,
      ),
    );
  }

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

  Widget inputName({String label, String hintText}) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: label,
          hintText: hintText),
          validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  bool isInvalid = value.trim().length < 3;

                  if (isEmpty || isInvalid) {
                    return 'Informe um nome válido';
                  }

                  return null;
                },
    );
  }

  Widget inputEmail({String label, String hintText}) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelText: label,
        hintText: hintText,
      ),
      validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  bool isInvalid = value.contains('@');

                  if (isEmpty || !isInvalid) {
                    return 'Informe um E-mail válido';
                  }

                  return null;
                },
    );
  }

  Widget inputPassword({String label, String hintText}) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelText: label,
        hintText: hintText,
      ),
      validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  bool isInvalid = value.trim().length < 6;

                  if (isEmpty || isInvalid) {
                    return 'Informe uma senha com mais de 6 caracteres';
                  }

                  return null;
                },
    );
  }

  Widget confirmPassword({String label, String hintText}) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelText: label,
        hintText: hintText,
      ),
      validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  bool isInvalid = value.trim().length < 6;

                  if (isEmpty || isInvalid) {
                    return 'As senhas não conferem.';
                  }

                  return null;
                },
    );
  }

  Widget buttonSignUp(
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
        "Cadastrar",
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
}
