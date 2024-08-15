import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../components/appbar/my_sliver_app_bar.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../widgets/my_checkbox_list_tile.dart';
import '../home/components/news_2.dart';

class NewsSourceView extends StatelessWidget {
  const NewsSourceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: context.normalValue,
              left: context.normalValue,
              right: context.normalValue,
            ),
            child: MyCheckboxListTile(
              value: true,
              title: "Kaynak",
              subtitle: "${657} ${context.l10n.subscriber}",
              isPrefixColored: true,
              prefixIcon: CachedNetworkImageProvider(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Azerbaijan.svg/2560px-Flag_of_Azerbaijan.svg.png",
              ),
            ),
          ).toSliver,
          News2(
            padding: context.paddingNormal,
            shrinkWrap: true,
            newsSourceClickable: false,
            physics: const NeverScrollableScrollPhysics(),
          ).toSliver,
        ],
      ),
    );
  }
}
