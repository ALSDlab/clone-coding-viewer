import 'package:flutter/material.dart';

class SubscribeScreen extends StatefulWidget {
  const SubscribeScreen({super.key});

  @override
  State<SubscribeScreen> createState() => _AddImageScreenState();
}

class _AddImageScreenState extends State<SubscribeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: const Center(
            child: Text('구독하기', style: TextStyle(color: Colors.white),),
          ),
        )
    );
  }
}
