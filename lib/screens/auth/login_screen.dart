import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/routes.dart';
import 'package:wallet_app_v2/core/theme.dart';
import 'package:wallet_app_v2/core/utils/validators.dart';
import 'package:wallet_app_v2/core/widgets/ui_button.dart';
import 'package:wallet_app_v2/core/widgets/ui_text_input.dart';
import 'package:wallet_app_v2/screens/auth/widgets/auth_layout.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Iniciar sesión', style: kH1,),
          const SizedBox(height: 6,),
          Text('!Bienvenido de nuevo!', style: kD1),
          const SizedBox(height: 30,),
          LoginForm(),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('¿No tienes tu cuenta aún?', style: kD1),
              const SizedBox(width: 10,),
              GestureDetector(
                child: Text('Regístrate', style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),),
                onTap: () => Navigator.of(context).pushNamed(Routes.REGISTER_ONE),
              )
            ],
          ),
          const SizedBox(height: 10,),
        ],
      )
    );
  }
  
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final formKey = GlobalKey<FormState>(debugLabel: 'loginForm');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          UITextInput(
            label: 'Correo electrónico',
            hint: 'email@gmail.com',
            icon: const Icon(Icons.person_outline, size: 24,),
            controller: emailController,
            validator: Validators.isValidEmail,
            inputType: TextInputType.emailAddress
          ),
          const SizedBox(height: 10,),
          UITextInput(
            label: 'Contraseña',
            hint: '• • • • • • • • • • • • •',
            icon: const Icon(Icons.lock_outline, size: 24,),
            isObscure: true,
            controller: passwordController,
            validator: (value) => Validators.minLenght(value, Validators.minPasswordLenght),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            child: Text('¿Olvidaste tu contraseña?', style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),),
            onTap: () => Navigator.of(context).pushNamed(Routes.FORGOT_PASSWORD),
          ),
          const SizedBox(height: 20,),
          UIButton(
            text: 'Ingresar',
            onPress: () {},
          )
        ],
      ),
    );
  }
}
