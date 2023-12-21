import 'dart:io';

import 'package:clone_coding_image_viewer/imageModel/images.dart';
import 'package:flutter/material.dart';

class ImageCards extends StatelessWidget {
  const ImageCards({super.key, required this.image});

  final ImageDetail image;

  Future<double> imageByte(String filePath) async {
    double megaByte = await File(filePath).length() / 1000000;
    return megaByte;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              image.filePath,
              height: 220.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 8.0,
              right: 8.0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                color: Colors.black,
                child: Text(
                  imageByte(image.filePath).then((value) => value).toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => print('프로필 화면으로 갑니다.'),
                child: CircleAvatar(
                  foregroundImage: AssetImage('/assets/icons/thumb.png'),
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                        child: Text(
                      'Filename: ${image.filePath}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 15.0),
                    )),
                    Flexible(
                        child: Text(
                      'Distribution: ${image.distribution}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 14.0),
                    ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: const Icon(Icons.more_vert),
              )
            ],
          ),
        )
      ],
    );
  }
}
