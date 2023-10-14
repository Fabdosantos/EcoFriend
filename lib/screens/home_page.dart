import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Eco Friend", style: TextStyle()),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar"),
        )
      ],
    );
  }
}
