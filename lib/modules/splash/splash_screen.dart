import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Modular.to.navigate('home/');
    });
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0XFF000000),
                Color(0XFF000a12),
                Color(0XFF001423),
                Color(0XFF001f35),
                Color(0XFF002946),
                Color(0XFF003358),
                Color(0XFF003d6a),
                Color(0XFF00477b),
                Color(0XFF00528d),
                Color(0XFF005c9e),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: const Text('Shorts Clone'),
              )
            ],
          )),
    );
  }
}
