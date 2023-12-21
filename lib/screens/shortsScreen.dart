import 'package:flutter/material.dart';

class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _AddImageScreenState();
}

class _AddImageScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: const Center(
            child: Text('숏츠 보기', style: TextStyle(color: Colors.white),),
          ),
        )
    );
  }
}
