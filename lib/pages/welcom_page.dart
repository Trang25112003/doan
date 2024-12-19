import 'package:doan_2/components/app_elevated_button/td_elevated_button.dart';
import 'package:doan_2/pages/auth/login_page.dart';
import 'package:doan_2/pages/auth/register_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const textStyle = TextStyle(color: Colors.brown, fontSize: 14.0);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            child:  Center(
          child: Image.asset('assets/images/logo_1.jpg',
          width: 450,
          height: 450),
        )
          ),
          Positioned(
            left: 20.0,
            top: size.height / 2.0,
            right: 60.0,
            bottom: 72.0,
            child: Column(
              children: [
                const Text('Welcome to the IT job search application.',
                    style: TextStyle(color: Colors.grey, fontSize: 32.0)),
                const Text('We are glad to have you here',
                    style: textStyle),
                const Text('Your go-to platform for finding IT job opportunities',
                    style: textStyle,),
                const Text('Connecting you with the right IT jobs quickly and efficiently',
                style: textStyle,),

                const Spacer(),
                TdElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                        (Route<dynamic> route) => false);
                  },
                  text: 'Login',
                ),
                const SizedBox(height: 20.0),
                TdElevatedButton.outline(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                        (Route<dynamic> route) => false);
                  },
                  text: 'Sign up',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
