import 'package:ecofriend/screens/home_page.dart';
import 'package:ecofriend/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Email", style: TextStyle(fontSize: 26)),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(fontSize: 20),
        ),
        const Text(
          "Senha",
          style: TextStyle(fontSize: 26),
        ),
        TextFormField(
          style: const TextStyle(fontSize: 20),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
          child: const Text("Cadastre-se"),
        )
      ],
    );
  }
}
