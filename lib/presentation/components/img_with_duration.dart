import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_player/internal/utils.dart';

class ImgWithDuration extends StatelessWidget {
  final String imageUrl;
  final int duration;
  const ImgWithDuration({super.key, required this.imageUrl, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              value: progress.progress,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.broken_image),
          imageUrl: imageUrl,
        ),
        if (Uri.parse(imageUrl).isAbsolute)
          Positioned.fill(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 14, bottom: 14),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5), // .all(4),
                    child: Text(Utils.timeFormat(duration), style: const TextStyle(color: Colors.white),),
                  )
                ),
              ),
            ),
          ),
      ],
    );
  }
}