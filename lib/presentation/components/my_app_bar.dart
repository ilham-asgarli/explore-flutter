import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/extensions/context_extension.dart';
import '../../core/extensions/string_extension.dart';
import '../../core/router/core/router_service.dart';
import '../../utils/logic/constants/enums/app_enum.dart';
import '../../utils/logic/constants/router/main_router_constants.dart';
import '../../utils/logic/constants/router/profile_router_constants.dart';
import '../../utils/logic/core/router/main_router_service.dart';
import '../../utils/logic/state/bloc/theme/theme_bloc.dart';
import 'my_profile_picture_image.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? image;
  final String? leading;
  final Function()? onTapLeading;
  final Function()? onTapProfilePicture;
  final AppBarLeading? appBarLeading;
  final bool? clickableProfilePicture;

  const MyAppBar({
    Key? key,
    this.image,
    this.appBarLeading = AppBarLeading.add,
    this.leading,
    this.clickableProfilePicture,
    this.onTapProfilePicture,
    this.onTapLeading,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.normalValue),
      child: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: context.watch<ThemeBloc>().state.appColors.second,
        elevation: 0,
        leading: IconButton(
          onPressed: onTapLeading ??
              () {
                defaultOnTapLeading(context);
              },
          icon: ImageIcon(
            size: 25,
            color: context.watch<ThemeBloc>().state.appColors.third,
            AssetImage(
              leading ?? defaultLeading(),
            ),
          ),
        ),
        title: Image.asset(
          "ic_logo".toPNG,
          height: 35,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 15,
            ),
            child: GestureDetector(
              onTap: clickableProfilePicture ?? false
                  ? onTapProfilePicture ?? defaultOnTapProfilePicture
                  : null,
              child: Container(
                width: 35,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
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
        return "ic_add".toPNG;
      case AppBarLeading.back:
        return "ic_back".toPNG;
      default:
        return "ic_add".toPNG;
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
