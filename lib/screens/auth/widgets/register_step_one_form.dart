import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/routes.dart';
import 'package:wallet_app_v2/core/utils/validators.dart';
import 'package:wallet_app_v2/core/widgets/ui_button.dart';
import 'package:wallet_app_v2/core/widgets/ui_text_input.dart';

class RegisterStepOneForm extends StatefulWidget {

  const RegisterStepOneForm({
    Key? key
  }) : super(key: key);

  @override
  _RegisterStepOneFormState createState() => _RegisterStepOneFormState();
}

class _RegisterStepOneFormState extends State<RegisterStepOneForm> {
  
  final stepOneFormKey = GlobalKey<FormState>(debugLabel: 'stepOneFormKey');
  final stepOneEmailController = TextEditingController(text: '');
  final stepOnePasswordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: stepOneFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          UITextInput(
            label: 'Correo electrónico',
            hint: 'email@gmail.com',
            icon: const Icon(Icons.person_outline, size: 24,),
            controller: stepOneEmailController,
            validator: Validators.isValidEmail,
            inputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10,),
          UITextInput(
            label: 'Contraseña',
            hint: '• • • • • • • • • • • • •',
            icon: const Icon(Icons.lock_outline, size: 24,),
            isObscure: true,
            controller: stepOnePasswordController,
            validator: (value) => Validators.minLenght(value, Validators.minPasswordLenght),
          ),
          const SizedBox(height: 54,),
          UIButton(
            text: 'Regístrate',
            onPress: () => Navigator.of(context).pushNamed(Routes.REGISTER_TWO),
          )
        ],
      ),
    );
  }

}

