import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "text for button";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Topbar here",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        children: [
          MyButton(
            buttonTitle: "Clickable button here -=.^_^.=-",
            onClick: () => {},
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onClick;

  const MyButton({super.key, required this.buttonTitle, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onClick, child: Text(buttonTitle));
  }
}
