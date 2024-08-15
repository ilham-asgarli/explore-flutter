import 'package:flutter/material.dart';

import '../../../../../../data/models/lang/lang.model.dart';

class CountryDropdownItem extends StatelessWidget {
  final LangModel countryModel;
  final TextStyle? style;

  const CountryDropdownItem({
    super.key,
    required this.countryModel,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          countryModel.name ?? "",
          style: style,
        ),
      ],
    );
  }
}
