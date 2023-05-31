import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/widget_extension.dart';
import '../../utils/logic/state/bloc/theme/theme_bloc.dart';
import 'my_shimmer.dart';

class TablePlaceHolder extends StatelessWidget {
  final int columnCount;
  final int rowCount;
  final double? padding;
  final double? space;

  const TablePlaceHolder({
    required this.columnCount,
    required this.rowCount,
    this.padding,
    this.space,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: rowCount,
      itemBuilder: (context, index) {
        return MyShimmer(
          color: context.watch<ThemeBloc>().state.appColors.shimmer,
          child: Table(
            children: [
              TableRow(
                children: List.generate(
                  columnCount,
                  (index) => Card(
                    child: Padding(
                      padding: padding != null
                          ? EdgeInsets.all(padding!)
                          : context.paddingNormal,
                      child: const Text(""),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return space != null
            ? const SizedBox(
                height: 10,
              )
            : context.widget.dynamicVerticalSpace(context, 0.01);
      },
    );
  }
}
