import 'package:ecofriend/screens/usuario_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List<bool> _isActiveList = [true, false, false];

  void _handleButtonActived(int index) {
    setState(() {
      for (int i = 0; i < _isActiveList.length; i++) {
        _isActiveList[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 70,
      color: const Color.fromARGB(186, 229, 229, 229),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                color: _isActiveList[0] ? Colors.green : Colors.grey,
                icon: const Icon(
                  Icons.home,
                  size: 34,
                ),
                onPressed: () => _handleButtonActived(0),
              ),
              const Text("Home")
            ],
          ),
          Column(
            children: [
              IconButton(
                color: _isActiveList[1] ? Colors.green : Colors.grey,
                icon: const Icon(
                  Icons.person,
                  size: 34,
                ),
                onPressed: () {
                  _handleButtonActived(1);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UsuarioPage(),
                  ));
                },
              ),
              const Text("Usuario")
            ],
          ),
          Column(
            children: [
              IconButton(
                color: _isActiveList[2] ? Colors.green : Colors.grey,
                icon: const Icon(
                  Icons.add_to_drive_sharp,
                  size: 34,
                ),
                onPressed: () => _handleButtonActived(2),
              ),
              const Text("Recicle")
            ],
          )
        ],
      ),
    );
  }
}
