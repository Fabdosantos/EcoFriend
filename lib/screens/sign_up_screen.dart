import 'package:ecofriend/screens/home_page.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Nome Completo",
            style: TextStyle(fontSize: 26),
          ),
          const TextField(
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            "Data de Nascimento",
            style: TextStyle(fontSize: 26),
          ),
          const TextField(keyboardType: TextInputType.datetime),
          const Text(
            "Email",
            style: TextStyle(fontSize: 26),
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
          ),
          const Text(
            "Senha",
            style: TextStyle(fontSize: 26),
          ),
          const TextField(),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              "Cadastrar",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
