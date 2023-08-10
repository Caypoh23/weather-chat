// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:weather/conf/assets/image_constants.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';

class MyImage extends StatelessWidget {
  //
  final String imgUrl;

  final double? maxHeight;
  final double? width, height;
  final double? minWidth, minHeight;

  final BoxFit? fit;

  final BorderRadius borderRadius;

  final String? errorImage;

  MyImage.loader(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.errorImage,
    this.borderRadius = BorderRadius.zero,
    this.fit = BoxFit.contain,
  }) : super(key: ValueKey(imgUrl));

  MyImage.profile(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.fit = BoxFit.cover,
    this.errorImage = MyImages.avatar,
    this.borderRadius = MyBorderRadius.allRounded12,
  }) : super(key: ValueKey(imgUrl));

  MyImage.photo(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.fit = BoxFit.cover,
    this.errorImage = MyImages.photo,
    this.borderRadius = MyBorderRadius.allRounded12,
  }) : super(key: ValueKey(imgUrl));

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: maxHeight ?? double.infinity,
        ),
        child: CachedNetworkImage(
          fit: fit,
          width: width,
          height: height,
          imageUrl: imgUrl,
          placeholder: (context, url, [_]) => getPlaceholder(),
          errorWidget: (context, url, [_]) => getErrorImage(),
        ),
      ),
    );
  }

  Widget getPlaceholder() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      direction: ShimmerDirection.ltr,
      child: Container(
        width: width ?? minWidth,
        height: height ?? minHeight,
        color: MyColors.shrimmer,
      ),
    );
  }

  Widget getErrorImage() {
    return errorImage != null
        ? Image.asset(
            errorImage!,
            width: width,
            height: height,
          )
        : getPlaceholder();
  }
}
