import 'package:cached_network_image/cached_network_image.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/domain/models/other/country_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';

class Country extends StatelessWidget {
  final CountryModel countryModel;
  final bool light;

  const Country({
    Key? key,
    required this.countryModel,
    this.light = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: context.watch<ThemeBloc>().state.appColors.second,
          foregroundImage: CachedNetworkImageProvider(countryModel.flag ?? ""),
        ),
        context.widget.verticalSpace(5),
        FittedBox(
          child: Text(
            countryModel.name ?? "",
            style: TextStyle(
              fontSize: light ? 19 : 12,
              fontWeight: FontWeight.bold,
              color: light
                  ? Colors.white
                  : context.watch<ThemeBloc>().state.appColors.third,
            ),
          ),
        ),
      ],
    );
  }
}
