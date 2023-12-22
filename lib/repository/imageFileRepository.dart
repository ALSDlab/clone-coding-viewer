import 'package:clone_coding_image_viewer/imageModel/images.dart';

class ImageFileRepository {
  final List<ImageDetail> images = [
    ImageDetail(
      id: 4,
      filePath: 'assets/images/ATV/atv1.jpg',
      distribution: 'ATV',
    ),
    ImageDetail(
      id: 5,
      filePath: 'assets/images/ATV/atv2.jpg',
      distribution: 'ATV',
    ),
    ImageDetail(
      id: 6,
      filePath: 'assets/images/ATV/atv3.jpg',
      distribution: 'ATV',
    ),
    ImageDetail(
      id: 7,
      filePath: 'assets/images/bike/bike1.jpg',
      distribution: 'bike',
    ),
    ImageDetail(
      id: 8,
      filePath: 'assets/images/bike/bike2.jpg',
      distribution: 'bike',
    ),
    ImageDetail(
      id: 9,
      filePath: 'assets/images/bike/bike3.jpg',
      distribution: 'bike',
    ),
    ImageDetail(
      id: 10,
      filePath: 'assets/images/bike/bike4.jpg',
      distribution: 'bike',
    ),
    ImageDetail(
      id: 11,
      filePath: 'assets/images/classicCar/classicCar1.jpg',
      distribution: 'classic car',
    ),
    ImageDetail(
      id: 12,
      filePath: 'assets/images/classicCar/classicCar2.jpg',
      distribution: 'classic car',
    ),
    ImageDetail(
      id: 13,
      filePath: 'assets/images/classicCar/classicCar3.jpg',
      distribution: 'classic car',
    ),
    ImageDetail(
      id: 14,
      filePath: 'assets/images/classicCar/classicCar4.jpg',
      distribution: 'classic car',
    ),
    ImageDetail(
      id: 15,
      filePath: 'assets/images/superCar/superCar1.jpg',
      distribution: 'super car',
    ),
    ImageDetail(
      id: 16,
      filePath: 'assets/images/superCar/superCar2.jpg',
      distribution: 'super car',
    ),
    ImageDetail(
      id: 17,
      filePath: 'assets/images/superCar/superCar3.jpg',
      distribution: 'super car',
    ),
    ImageDetail(
      id: 18,
      filePath: 'assets/images/superCar/superCar4.jpg',
      distribution: 'super car',
    ),
    ImageDetail(
      id: 19,
      filePath: 'assets/images/superCar/superCar5.jpg',
      distribution: 'super car',
    ),
  ];

  List<dynamic> getImages() {
    return images;
  }
}
