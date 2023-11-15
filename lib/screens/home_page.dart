import 'package:ecofriend/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eco Friend"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: const SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bem-vindo!",
              style: TextStyle(
                  fontSize: 24, decorationStyle: TextDecorationStyle.solid),
            ),
            Card(
              child: Text(
                "Card",
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
