import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: const Column(
              children: [
                Image.network(video.thumbnailUrl, height: 220.0, width: double.infinity,),
                Text(
                  '홈 화면',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '홈 화면',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '홈 화면',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }
}

class FilterButton extends StatelessWidget {
  String text;

  FilterButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        children: [
          Text(text),
          const Icon(Icons.refresh),
        ],
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          //side: BorderSide(color: Colors.red) // border line color
        )),
      ),
    );
  }
}
