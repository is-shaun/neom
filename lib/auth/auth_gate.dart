import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:neom/pages/pages.dart';

class AuthGateTab extends StatefulWidget {
  const AuthGateTab({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAuthGatePageState createState() => _MyAuthGatePageState();
}

class _MyAuthGatePageState extends State<AuthGateTab> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        }
        return const LoginScreen();
      },
    );
  }
}
