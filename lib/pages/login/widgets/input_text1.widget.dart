//

import 'package:flutter/material.dart';

class InputText1 extends StatelessWidget {
  InputText1({
    this.hintTextImport,
    this.changed,
    this.obscure,
  });

  var obscure;
  var hintTextImport;
  Function changed;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;

    return SizedBox(
      width: w * 80,
      child: TextFormField(
        // controller: pass,
        onChanged: changed,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hintTextImport,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),

        validator: (String arg) {
          if (arg.length < 1)
            return 'Por favor preencha a senha';
          else
            return null;
        },
      ),
    );
  }
}
