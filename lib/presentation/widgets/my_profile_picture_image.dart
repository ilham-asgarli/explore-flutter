import 'package:flutter/material.dart';

import '../../utils/gen/assets.gen.dart';

/*class MyProfilePictureImageProvider extends CachedNetworkImageProvider {
  String? image;

  MyProfilePictureImageProvider({Key? key, this.image})
      : super(image ??
            "https://wallpapers.com/images/featured/4co57dtwk64fb7lv.jpg");
}*/

class MyProfilePictureImageProvider extends AssetImage {
  String? image;

  MyProfilePictureImageProvider({Key? key, this.image})
      : super(image ?? Assets.image.icProfile.path);
}
