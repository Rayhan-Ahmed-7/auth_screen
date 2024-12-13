import 'package:flutter/material.dart';
import 'package:login_screen/features/auth/widgets/auth_tabs.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/logo.png',
                height: 50,
              ),
              const SizedBox(height: 40),
              Expanded(
                child: const AuthTabs(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
