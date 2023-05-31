import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/logic/state/bloc/theme/theme_bloc.dart';

class MyDropdownButtonFormField<T> extends StatefulWidget {
  final String hintText;
  final ImageProvider<Object>? prefixIcon, suffixIcon;
  final bool isPrefixColored, isSuffixColored;
  final Color? iconColor, fillColor;
  final double? menuMaxHeight;
  final EdgeInsetsGeometry? contentPadding;
  final T value;
  final List<MyDropdownButtonFormFieldModel> items;
  final void Function(T?)? onChanged;
  final void Function(T?)? onSaved;

  const MyDropdownButtonFormField({
    Key? key,
    this.hintText = "",
    this.prefixIcon,
    this.suffixIcon,
    this.isPrefixColored = false,
    this.isSuffixColored = false,
    this.iconColor,
    this.menuMaxHeight,
    required this.value,
    required this.items,
    this.fillColor,
    this.onChanged,
    this.onSaved,
    this.contentPadding,
  }) : super(key: key);

  @override
  State<MyDropdownButtonFormField<T>> createState() =>
      _MyDropdownButtonFormFieldState<T>();
}

class _MyDropdownButtonFormFieldState<T>
    extends State<MyDropdownButtonFormField<T>> {
  ImageProvider<Object>? prefixIcon;

  @override
  void initState() {
    prefixIcon = widget.prefixIcon;
    setPrefixIcon(widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      borderRadius: BorderRadius.circular(12),
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: widget.fillColor ??
            context.watch<ThemeBloc>().state.appColors.fourth,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: !widget.isPrefixColored
                    ? ImageIcon(
                        prefixIcon,
                        size: 25,
                        color: widget.iconColor,
                      )
                    : Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: prefixIcon!,
                          ),
                        ),
                      ),
              )
            : null,
        suffixIcon: widget.suffixIcon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: !widget.isSuffixColored
                    ? ImageIcon(
                        widget.suffixIcon,
                        size: 25,
                        color: widget.iconColor,
                      )
                    : Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: widget.suffixIcon!,
                          ),
                        ),
                      ),
              )
            : null,
        prefixIconConstraints: const BoxConstraints(),
        suffixIconConstraints: const BoxConstraints(),
        hintText: widget.hintText,
        hintStyle: GoogleFonts.poppins(
          textStyle: TextStyle(color: widget.iconColor),
        ),
      ),
      icon: const SizedBox.shrink(),
      menuMaxHeight: widget.menuMaxHeight,
      value: widget.value,
      items: List.generate(
        widget.items.length,
        (index) => DropdownMenuItem(
          value: widget.items[index].value,
          child: widget.items[index].child,
        ),
      ),
      onChanged: (T? value) {
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }

        setPrefixIcon(value);
      },
      onSaved: widget.onSaved ?? (value) {},
    );
  }

  void setPrefixIcon(value) {
    ImageProvider<Object>? pIcon =
        widget.items.firstWhere((element) => element.value == value).prefixIcon;
    if (pIcon != null) {
      setState(() {
        prefixIcon = pIcon;
      });
    }
  }
}

class MyDropdownButtonFormFieldModel<T> {
  final T value;
  final ImageProvider<Object>? prefixIcon;
  final Widget child;

  MyDropdownButtonFormFieldModel({
    required this.value,
    this.prefixIcon,
    required this.child,
  });
}
