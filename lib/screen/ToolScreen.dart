import 'package:flutter/material.dart';

class ToolScreen extends StatefulWidget {
  const ToolScreen({super.key});

  @override
  State<ToolScreen> createState() => _ToolScreenState();
}

class _ToolScreenState extends State<ToolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tools"),
        ),
        body: Center(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
          ),
        ));
  }
}
