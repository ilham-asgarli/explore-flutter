import 'package:flutter/material.dart';

import '../../utils/constants/colors/app_colors.dart';

class GradientElevatedButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const GradientElevatedButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: AppColors.buttonGradient,
        borderRadius: BorderRadius.circular(5),
        /*boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.57),
            blurRadius: 5,
          ),
        ],*/
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 21,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
