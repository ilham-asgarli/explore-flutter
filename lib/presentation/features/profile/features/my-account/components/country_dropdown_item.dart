import 'package:explore/domain/models/other/country_model.dart';
import 'package:flutter/material.dart';

class CountryDropdownItem extends StatelessWidget {
  final CountryModel countryModel;
  final TextStyle? style;

  const CountryDropdownItem({
    Key? key,
    required this.countryModel,
    this.style,
  }) : super(key: key);

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
