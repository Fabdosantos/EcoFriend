import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Eco Friend"),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Voltar"),
        )
      ],
    );
  }
}
