import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';
import 'package:wallet_app_v2/screens/auth/widgets/auth_layout.dart';
import 'package:wallet_app_v2/screens/auth/widgets/register_step_two_form.dart';

class RegisterStepTwoScreen extends StatelessWidget {

  const RegisterStepTwoScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    EdgeInsets padding = MediaQuery.of(context).padding;
    double availableHeight = height - padding.top - kToolbarHeight;

    return AuthLayout(
      child: Container(
        height: availableHeight - keyboardHeight,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Completa tus datos', style: kH1,),
                const SizedBox(height: 8,),
                Text('Descripción completar tus datos', style: kD1),
                const SizedBox(height: 30,),
                RegisterStepTwoForm(),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      )
    );
  }
}
