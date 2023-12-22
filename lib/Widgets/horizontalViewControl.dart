import 'package:clone_coding_image_viewer/Widgets/ImageCards.dart';
import 'package:clone_coding_image_viewer/repository/airplaneImageRepository.dart';
import 'package:flutter/material.dart';

class HorizontalViewControl extends StatefulWidget {
  const HorizontalViewControl({super.key});

  @override
  State<HorizontalViewControl> createState() => _HorizontalViewControlState();
}

class _HorizontalViewControlState extends State<HorizontalViewControl> {
  final airplaneImageInfos = AirplaneImageRepository().getAirplaneImage();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 350,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: airplaneImageInfos.length,
            itemBuilder: (context, index) {
              final image = airplaneImageInfos[index];
              return ImageCards(image: image);
            }),
      ),
    );
  }
}


