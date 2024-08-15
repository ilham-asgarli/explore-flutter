import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyProfilePictureImageProvider extends CachedNetworkImageProvider {
  String? image;

  MyProfilePictureImageProvider({Key? key, this.image})
      : super(image ??
            "https://wallpapers.com/images/featured/4co57dtwk64fb7lv.jpg");
}
