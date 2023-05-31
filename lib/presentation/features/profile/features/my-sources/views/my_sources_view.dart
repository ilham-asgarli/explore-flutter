import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/constants/enums/app_enum.dart';
import 'package:flutter/material.dart';

import '../../../../../components/my_sliver_app_bar.dart';
import '../../../../../components/source_form_item.dart';

class MySourcesView extends StatelessWidget {
  const MySourcesView({Key? key}) : super(key: key);

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
            child: const SourceFormItem(),
          ).toSliver,
        ],
      ),
    );
  }
}
