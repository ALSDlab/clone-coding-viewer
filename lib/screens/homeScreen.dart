import 'package:clone_coding_image_viewer/Widgets/ImageCards.dart';
import 'package:clone_coding_image_viewer/imageFileRepository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final images = ImageFileRepository().getImages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final image = images[index];
                  return ImageCards(image: image);
                },
                childCount: images.length,
            ),)
          ],
        )
    );
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
