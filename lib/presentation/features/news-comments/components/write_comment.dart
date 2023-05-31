import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/my_profile_picture_image.dart';

class WriteComment extends StatelessWidget {
  const WriteComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      decoration: BoxDecoration(
        color: context.watch<ThemeBloc>().state.appColors.fourth,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: MyProfilePictureImageProvider(),
          ),
          Expanded(
            child: Padding(
              padding: context.paddingLowHorizontal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "İsim",
                    style: TextStyle(
                      fontFamily: "Matter",
                      fontSize: 16,
                    ),
                  ),
                  TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: LocaleKeys.yourComment.tr(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                "ic_send_square".toPNG,
                width: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
