import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';
import 'package:wallet_app_v2/core/widgets/ui_button.dart';

class RegisterStepThreeForm extends StatefulWidget {
  
  const RegisterStepThreeForm({
    Key? key
  }) : super(key: key);

  @override
  _RegisterStepThreeFormState createState() => _RegisterStepThreeFormState();
}

class _RegisterStepThreeFormState extends State<RegisterStepThreeForm> {

  File? imageOne;
  File? imageTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Frente', style: kD1,),
        _imageContainer(
          ctx: context,
          image: imageOne,
          onTap: () async {
            // final pickedFile = await ImagePicker().getImage(source: ImageSource.camera, maxHeight: 1392);
            // _.imageOne = File(pickedFile.path);
            // _.update([IDStepThreeForm]);
          }
        ),
        const SizedBox(height: 10,),
        Text('Reverso', style: kD1,),
        _imageContainer(
          ctx: context,
          image: imageTwo,
          onTap: () async {
            // final pickedFile = await ImagePicker().getImage(source: ImageSource.camera, maxHeight: 1392);
            // _.imageTwo = File(pickedFile.path);
            // _.update([IDStepThreeForm]);
          }
        ),
        const SizedBox(height: 10,),
        UIButton(
          text: 'Terminar',
          onPress: () {},
        ),
      ],
    );
  }

  Widget _imageContainer({ 
    required BuildContext ctx, 
    required VoidCallback onTap,
    File? image, 
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: const BoxDecoration( 
          color: kNeutralN30, 
          borderRadius: const BorderRadius.all(kBorderRadius)
        ),
        child: image == null
          ? Center(child: Text('Ninguna imágen seleccionada'))
          : Image.file(image, fit: BoxFit.cover, ),
      ),
    );
  }
}