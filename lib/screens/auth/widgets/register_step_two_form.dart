import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/routes.dart';
import 'package:wallet_app_v2/core/utils/validators.dart';
import 'package:wallet_app_v2/core/widgets/ui_button.dart';
import 'package:wallet_app_v2/core/widgets/ui_country_selector.dart';
import 'package:wallet_app_v2/core/widgets/ui_text_input.dart';

class RegisterStepTwoForm extends StatefulWidget {

  const RegisterStepTwoForm({
    Key? key
  }) : super(key: key);

  @override
  _RegisterStepTwoFormState createState() => _RegisterStepTwoFormState();
}

class _RegisterStepTwoFormState extends State<RegisterStepTwoForm> {

  final stepTwoFormKey = GlobalKey<FormState>(debugLabel: 'stepTwoFormKey');
  final stepTwoCountryController = TextEditingController(text: '01ECRJK8SJ79NYJSW8YAYNRPPR');
  final stepTwoNamesController = TextEditingController(text: '');
  final stepTwoDocumentTypeController = TextEditingController(text: '01ECWPFDPKS32NC2HNZCQD8XF2');
  final stepTwoDocumentController = TextEditingController(text: '');
  final stepTwoPhoneController = TextEditingController(text: '');
  final stepTwoAddressController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: stepTwoFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          UICountrySelector(
            onChanged: (v) {},
          ),
          const SizedBox(height: 10,),
          UITextInput(
            label: 'Nombres',
            hint: 'Nombres',
            icon: const Icon(Icons.person_outline, size: 24,),
            controller: stepTwoNamesController,
            validator: Validators.isValidEmail,
          ),
          const SizedBox(height: 10,),
          // TODO Document type selector
          const SizedBox(height: 10,),
          UITextInput(
            controller: stepTwoDocumentController,
            hint: 'Número de documento',
            label: 'Número de documento',
            icon: const Icon(Icons.chrome_reader_mode),
          ),
          const SizedBox(height: 10,),
          UITextInput(
            controller: stepTwoPhoneController,
            hint: 'Número de teléfono',
            label: 'Número de teléfono',
            icon: const Icon(Icons.phone_android),
          ),
          const SizedBox(height: 10,),
          UITextInput(
            controller: stepTwoAddressController,
            hint: 'Dirección',
            label: 'Dirección',
            icon: const Icon(Icons.location_city),
          ),
          const SizedBox(height: 100,),
          UIButton(
            text: 'Siguiente',
            onPress: () => Navigator.of(context).pushNamed(Routes.REGISTER_THREE),
          )
        ],
      ),
    );
  }
}