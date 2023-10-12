// ignore_for_file: file_names

import 'package:flutter/widgets.dart';

class AppImages {
  assetImage(String path) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
    );
  }

  assetImageWithWidthAndHeight(String path, double width, double height) {
    return Image.asset(
      path,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }

  assetImageWithWidthAndHeightAndColor(
      String path, double width, double height, Color color) {
    return Image.asset(
      path,
      width: width,
      height: height,
      color: color,
    );
  }

  assetImageWithColor(String path, Color color) {
    return Image.asset(
      path,
      color: color,
    );
  }

  networkImage(String path) {
    return Image.network(
      path,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return assetImage(path);
      },
    );
  }

  networkImageWithWidthAndHeight(
    String path,
    double width,
    double height,
  ) {
    return Image.network(
      path,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return assetImageWithWidthAndHeight(
            "assets/images/logo.png", width, height);
      },
    );
  }
}
