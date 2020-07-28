import 'package:app_treinamento/login/widgets/input_text1.widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({
    this.title,
  });

  final title;

  //
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      ///
      // appBar: AppBar(
      //   title: Text(title),
      // ),

      ///
      body: Container(
        width: w * 100,
        child: new Form(
          // key: _formKey,
          // autovalidate: _autoValidate,
          child: ListView(
            children: <Widget>[
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: h * 5,
                  ),

                  ///[--------------------  LOGO --------------------]
                  SizedBox(
                    width: w * 55,
                    child: Image.asset("assets/imagens/logo1.jpg"),
                  ),
                  SizedBox(
                    height: 200,
                  ),

                  ///[--------------------  USUARIO --------------------]
                  ///

                  SizedBox(
                    height: h * 5,
                  ),

                  InputText1(
                    hintTextImport: "Usuario",
                  ),

                  SizedBox(
                    height: h * 5,
                  ),

                  ///[-------------------- Senha --------------------]
                  ///

                  InputText1(
                    hintTextImport: "Senha",
                  ),

                  //
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
