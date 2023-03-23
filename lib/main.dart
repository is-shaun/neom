import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:neom/pages/pages.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const NeomApp());
}

class NeomApp extends StatelessWidget {
  const NeomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/auth-gate': (context) => const AuthGateTab(),
          '/': (context) => HomeScreen(),
          '/login': (context) => const LoginScreen(),
          '/home': (context) => HomeScreen(),
        },
        initialRoute: '/auth-gate',
      ),
    );
  }
}
