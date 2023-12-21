import 'package:clone_coding_image_viewer/Widgets/ImageCards.dart';
import 'package:clone_coding_image_viewer/imageFileRepository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final imageInfos = ImageFileRepository().getImages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.black,
              height: 40.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FilterButton(text: '전체'),
                  FilterButton(text: 'AIRPLANE'),
                  FilterButton(text: 'ATV'),
                  FilterButton(text: 'BIKE'),
                  FilterButton(text: 'CLASSIC CAR'),
                  FilterButton(text: 'SUPER CAR'),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final image = imageInfos[index];
                return ImageCards(image: image);
              },
              childCount: imageInfos.length,
            ),
          ),

        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String text;

  const FilterButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white24,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(text)),
    );
  }
}

//
