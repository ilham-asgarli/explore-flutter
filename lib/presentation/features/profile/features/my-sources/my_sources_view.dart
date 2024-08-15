import 'package:flutter/material.dart';

import '../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../../../utils/extensions/widget_extension.dart';
import '../../../../widgets/source_form_item.dart';

class MySourcesView extends StatelessWidget {
  const MySourcesView({super.key});

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
