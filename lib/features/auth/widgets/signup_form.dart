import 'package:flutter/material.dart';
import 'package:login_screen/constants/styles.dart';
import 'package:login_screen/features/auth/widgets/custom_text_field.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomTextField(
          hintText: 'Full Name',
          prefixIcon: Icons.person_outline,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          hintText: 'deanna.curtis@example.com',
          prefixIcon: Icons.email_outlined,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          hintText: 'Gender',
          prefixIcon: Icons.people_outline,
          suffixIcon: Icons.arrow_drop_down,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
          isPassword: true,
        ),
        const SizedBox(height: 10),
        const LinearProgressIndicator(
          value: 0.8,
          backgroundColor: Colors.grey,
          color: Colors.amber,
        ),
        const SizedBox(height: 5),
        const Text('Strong', style: AppStyles.smallText),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Next', style: AppStyles.buttonText),
        ),
      ],
    );
  }
}
