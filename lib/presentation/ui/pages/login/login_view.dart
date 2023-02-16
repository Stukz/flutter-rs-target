import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_base_rootstrap/presentation/ui/pages/login/widget/input_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const double _headerHeightPercentage = 0.3;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height:
                MediaQuery.of(context).size.height * _headerHeightPercentage,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/header.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: const Center(
              child: Text(
                'TARGET MVD',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 66,
            ),
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: const [
                      InputWidget(
                        label: 'Email',
                        value: '',
                        hintText: 'Enter your email',
                      ),
                      SizedBox(height: 24),
                      InputWidget(
                        label: 'Password',
                        value: '',
                        hintText: 'Enter your password',
                        isSensitive: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 26),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
