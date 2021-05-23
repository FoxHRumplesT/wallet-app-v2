import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';
import 'package:wallet_app_v2/screens/auth/widgets/auth_layout.dart';
import 'package:wallet_app_v2/screens/auth/widgets/register_step_three_form.dart';

class RegisterStepThreeScreen extends StatelessWidget {

  const RegisterStepThreeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        children: [
          Text('Fotos de identificación', style: kH1,),
          const SizedBox(height: 8,),
          Text('Toma las fotos de tu identificación', style: kD1),
          const SizedBox(height: 30,),
          RegisterStepThreeForm(),
          const SizedBox(height: 10,),
        ],
      )
    );
  }
}
