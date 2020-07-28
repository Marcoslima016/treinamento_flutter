import 'package:app_treinamento/login/widgets/input_text1.widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  LoginView({
    this.title,
  });

  final title;

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool botaoAtivo = false;

  //=========================================== METODOS ===========================================
  oncChange(valor) {
    var validation = EmailValidator.validate(valor);

    if (validation == true) {
      //
      // setState(() {
      //   botaoAtivo = true;
      // });

      botaoAtivo = true;
    } else {
      //

      botaoAtivo = false;
    }
  }

  //=========================================== TELA ===========================================

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
                    changed: oncChange,
                    obscure: false,
                  ),

                  SizedBox(
                    height: h * 5,
                  ),

                  ///[-------------------- Senha --------------------]
                  ///

                  InputText1(
                    hintTextImport: "Senha",
                    obscure: true,
                  ),

                  ///[-------------------- Botao --------------------]
                  ///

                  Container(
                    width: w * 45,
                    height: h * 9,
                    margin: new EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: h * 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        // side: BorderSide(color: Colors.red),
                      ),
                      textColor: Colors.white,
                      disabledColor: Colors.grey.withOpacity(0.6),
                      color: Colors.red,
                      child: Text(
                        "Entrar",
                        style: new TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: botaoAtivo ? () {} : null,
                    ),
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
