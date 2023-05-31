import 'package:flutter/material.dart';

import '../../../../../../../../core/extensions/context_extension.dart';
import '../../../../../../home/components/news_2.dart';

class MyContentLikesView extends StatelessWidget {
  const MyContentLikesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return News2(
      padding: EdgeInsets.only(bottom: context.normalValue),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
