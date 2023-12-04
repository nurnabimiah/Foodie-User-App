



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit fit;
  final bool isNotification;
  final String placeholder;

  const CustomImage({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.isNotification = false,
    this.placeholder = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeholderImage = placeholder.isNotEmpty
        ? placeholder : Image.asset('assets/images/carousel_slider_image.png');

    return CachedNetworkImage(
      imageUrl: image,
      height: height,
      width: width,
      fit: fit,

      placeholder: (context, url) => Image.asset(
        'assets/images/place_holder_image.png',
        height: height,
        width: width,
        fit: fit,
      ),
      errorWidget: (context, url, error) => Image.asset(
        'assets/images/place_holder_image.png',
        height: height,
        width: width,
        fit: fit,
      ),
    );
  }
}