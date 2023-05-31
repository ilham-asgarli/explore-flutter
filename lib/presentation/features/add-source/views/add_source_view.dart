import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/components/source_form_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/my_sliver_app_bar.dart';
import '../../../components/my_text_field.dart';

class AddSourceView extends StatelessWidget {
  const AddSourceView({Key? key}) : super(key: key);

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
                context.widget.verticalSpace(20),
                buildSources(context),
              ],
            ),
          ).toSliver,
        ],
      ),
    );
  }

  Widget buildSearch(BuildContext context) {
    return MyTextField(
      prefixIcon: "ic_search",
      suffixIcon: "ic_settings_sliders",
      hintText: LocaleKeys.sourceSearchHint.tr(),
      iconColor: context.watch<ThemeBloc>().state.appColors.third,
    );
  }

  Widget buildSources(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const SourceFormItem(
          showAll: true,
        );
      },
      separatorBuilder: (context, index) {
        return context.widget.verticalSpace(20);
      },
    );
  }
}
