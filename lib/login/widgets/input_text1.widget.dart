//

import 'package:flutter/material.dart';

class InputText1 extends StatelessWidget {
  InputText1({
    this.hintTextImport,
  });

  var hintTextImport;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;

    return SizedBox(
      width: w * 80,
      child: TextFormField(
        // controller: pass,
        obscureText: true,
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
