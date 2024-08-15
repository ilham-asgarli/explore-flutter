import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/lang/lang.model.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/num_extension.dart';
import '../../../utils/extensions/theme_extension.dart';

class Country extends StatelessWidget {
  final LangModel countryModel;
  final bool isDialog;

  const Country({
    super.key,
    required this.countryModel,
    this.isDialog = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: context.theme.customColors.second,
          foregroundImage: CachedNetworkImageProvider(countryModel.flag ?? ""),
        ),
        5.verticalSpace,
        FittedBox(
          child: Text(
            countryModel.name ?? "",
            style: TextStyle(
              fontSize: isDialog ? 19 : 12,
              fontWeight: FontWeight.bold,
              color: isDialog ? Colors.white : context.theme.customColors.third,
            ),
          ),
        ),
      ],
    );
  }
}
