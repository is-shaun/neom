import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:neom/auth/auth_util.dart';
import 'package:provider/provider.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: FadeIn(
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Image.asset('assets/images/login.png'),
                  ),
                  const Text(
                    'Welcome to Neom',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      'Neom is a social media app that allows you to connect with your friends and family.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Skeleton(
                          height: 25,
                          width: MediaQuery.of(context).size.width * 0.8,
                          style: SkeletonStyle.text,
                        ),
                        const SizedBox(height: 10),
                        Skeleton(
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.8,
                          style: SkeletonStyle.text,
                        ),
                        const SizedBox(height: 10),
                        Skeleton(
                          height: 15,
                          width: MediaQuery.of(context).size.width * 0.8,
                          style: SkeletonStyle.text,
                        ),
                        const SizedBox(height: 10),
                        Skeleton(
                          height: 15,
                          width: MediaQuery.of(context).size.width * 0.8,
                          style: SkeletonStyle.text,
                        ),
                        const SizedBox(height: 10),
                        Skeleton(
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.8,
                          style: SkeletonStyle.text,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        final provider =
                            Provider.of<SignInProvider>(context, listen: false);
                        provider.login();
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            height: 18,
                          ),
                          const SizedBox(width: 8),
                          const Text('Continue with Google'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // The following terms and conditions are not applicable to this app it is just for demo purposes.
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      'By continuing, you agree to our Terms of Service and Privacy Policy.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
