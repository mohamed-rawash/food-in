import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: Text('LoginView', style: Theme.of(context).textTheme.titleMedium,),
      ),
    );
  }
}
