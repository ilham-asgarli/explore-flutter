import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../utils/config/router/core/main_router_service.dart';
import '../../utils/config/router/core/router_service.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/constants/router/main_router_constants.dart';
import '../../utils/constants/router/profile_router_constants.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../widgets/my_profile_picture_image.dart';

class MySliverAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? image;
  final String? leading;
  final Function()? onTapLeading;
  final Function()? onTapProfilePicture;
  final AppBarLeading? appBarLeading;
  final bool? clickableProfilePicture;

  const MySliverAppBar({
    super.key,
    this.image,
    this.appBarLeading = AppBarLeading.add,
    this.leading,
    this.clickableProfilePicture,
    this.onTapProfilePicture,
    this.onTapLeading,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: context.normalValue),
      sliver: SliverAppBar(
        floating: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: context.theme.brightness == Brightness.dark
            ? context.theme.customColors.primary
            : Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: onTapLeading ??
              () {
                defaultOnTapLeading(context);
              },
          icon: ImageIcon(
            size: 25,
            color: context.theme.customColors.third,
            AssetImage(
              leading ?? defaultLeading(),
            ),
          ),
        ),
        title: Image.asset(
          Assets.image.icLogo.path,
          height: 35,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: GestureDetector(
              onTap: clickableProfilePicture ?? false
                  ? onTapProfilePicture ?? defaultOnTapProfilePicture
                  : null,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                  image: DecorationImage(
                    image: MyProfilePictureImageProvider(image: image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String defaultLeading() {
    switch (appBarLeading) {
      case AppBarLeading.add:
        return Assets.image.icAdd.path;
      case AppBarLeading.back:
        return Assets.image.icBack.path;
      default:
        return Assets.image.icAdd.path;
    }
  }

  void defaultOnTapProfilePicture() {
    RouterService.instance.pushNamed(
      path: ProfileRouterConstants.profile,
    );
  }

  void defaultOnTapLeading(BuildContext context) {
    switch (appBarLeading) {
      case AppBarLeading.add:
        onAdd();
        break;
      case AppBarLeading.back:
        onBack(context);
        break;
      default:
        return;
    }
  }

  void onAdd() {
    MainRouterService.instance.pushNamed(
      path: MainRouterConstants.addSource,
    );
  }

  void onBack(BuildContext context) {
    Navigator.pop(context);
  }
}
