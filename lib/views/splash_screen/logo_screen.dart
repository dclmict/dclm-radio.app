import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff0f111f),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Container(
                height: 134,
                width: 134,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/dclmlogo.png'),)
                ),
              ),
              //DLCM Radio App text
              Text('DCLM Radio App',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}