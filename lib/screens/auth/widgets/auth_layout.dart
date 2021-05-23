import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';
import 'package:wallet_app_v2/core/widgets/generic_appbar.dart';

class AuthLayout extends StatelessWidget {

  final Widget child;
  const AuthLayout({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: genericAppbar(
        background: kPrimaryColor,
        brightness: Brightness.light,
      ),
      body: SafeArea(
        child: Container(
          color: kPrimaryColor,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset('assets/img/simplepay-logo.png', width: 80,),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 20, right: 35, left: 35, 
                  ),
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: kWhite,
                    borderRadius: const BorderRadius.only(
                      topLeft: kBorderRadius,
                      topRight: kBorderRadius
                    )
                  ),
                  child: child
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}