import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/gen/assets.gen.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/theme_extension.dart';
import '../../../widgets/my_profile_picture_image.dart';

class WriteComment extends StatelessWidget {
  const WriteComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
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
                      hintText: context.l10n.yourComment,
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
                Assets.image.icSendSquare.path,
                width: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
