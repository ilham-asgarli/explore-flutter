import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/logic/state/bloc/theme/theme_bloc.dart';

class GradientElevatedButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const GradientElevatedButton({
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: context.watch<ThemeBloc>().state.appColors.buttonGradient,
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
          ),
        ),
      ),
    );
  }
}
