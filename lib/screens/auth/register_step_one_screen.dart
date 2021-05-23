import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';
import 'package:wallet_app_v2/screens/auth/widgets/auth_layout.dart';
import 'package:wallet_app_v2/screens/auth/widgets/register_step_one_form.dart';

class RegisterStepOneScreen extends StatelessWidget {

  const RegisterStepOneScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        children: [
          Text('Registrate', style: kH1,),
          const SizedBox(height: 8,),
          Text('Registro descripción', style: kD1),
          const SizedBox(height: 30,),
          RegisterStepOneForm(),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('¿Ya tienes una cuenta?', style: kD1),
              const SizedBox(width: 10,),
              GestureDetector(
                child: Text('Iniciar sesión', style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
          const SizedBox(height: 10,),
        ],
      )
    );
  }
}
