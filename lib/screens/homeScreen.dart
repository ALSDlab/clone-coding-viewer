import 'package:clone_coding_image_viewer/Widgets/ImageCards.dart';
import 'package:clone_coding_image_viewer/Widgets/horizontalViewControl.dart';
import 'package:clone_coding_image_viewer/repository/imageFileRepository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final imageInfos = ImageFileRepository().getImages();

  final List<Widget> _sliverList = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < imageInfos.length; i++) {
      _sliverList.add(
        SliverToBoxAdapter(
          child: ImageCards(
            image: imageInfos[i],
          ),
        ),
      );
    }
    _sliverList.add(const HorizontalViewControl());
    _sliverList.shuffle();
    _sliverList.insert(0,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: _sliverList,
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
