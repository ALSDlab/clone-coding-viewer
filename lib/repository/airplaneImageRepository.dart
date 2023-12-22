import 'package:clone_coding_image_viewer/imageModel/images.dart';

class AirplaneImageRepository {
  final List<ImageDetail> airplaneImages = [
    ImageDetail(
      id: 1,
      filePath: 'assets/images/airplane/airplane1.jpg',
      distribution: 'airplane',
    ),
    ImageDetail(
      id: 2,
      filePath: 'assets/images/airplane/airplane2.jpg',
      distribution: 'airplane',
    ),
    ImageDetail(
      id: 3,
      filePath: 'assets/images/airplane/airplane3.jpg',
      distribution: 'airplane',
    ),
  ];

  List<dynamic> getAirplaneImage() {
    return airplaneImages;
  }
}
