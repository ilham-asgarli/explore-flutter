import 'package:flutter/material.dart';

import '../../../../../utils/gen/assets.gen.dart';
import '../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../components/textfield/my_text_field.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../../../utils/extensions/num_extension.dart';
import '../../../../utils/extensions/theme_extension.dart';
import '../../../../utils/extensions/widget_extension.dart';
import '../../../../widgets/source_form_item.dart';

class ShowAllView extends StatelessWidget {
  const ShowAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          Padding(
            padding: context.paddingNormal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSearch(context),
                20.verticalSpace,
                buildSource(context),
              ],
            ),
          ).toSliver,
        ],
      ),
    );
  }

  Widget buildSearch(BuildContext context) {
    return MyTextField(
      prefixIcon: Assets.image.icSearch.path,
      suffixIcon: Assets.image.icSettingsSliders.path,
      hintText: context.l10n.sourceSearchHint,
      iconColor: context.theme.customColors.third,
    );
  }

  Widget buildSource(BuildContext context) {
    return Column(
      children: [
        const SourceFormItem(),
        20.verticalSpace,
      ],
    );
  }
}
