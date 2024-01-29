import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/values/styles.dart';
import '../../utils/values/my_colors.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? controller;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? background;
  final TextInputType? keyboardType;
  final TextInputFormatter inputFormatters;
  final int? suffixIcon;
  final String? errorText;
  bool? obscureText;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;
  final String? labelText;
  final String? text;
  final int? maxCharacters;

  CustomTextField(
      {this.height,
        this.width,
        this.fontSize,
        this.background,
        this.controller,
        this.obscureText,
        this.suffixIcon,
        this.onChanged,
        this.errorText,
        required this.inputFormatters,
        this.keyboardType,
        this.validator,
        this.labelText,
        this.text, this.maxCharacters});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: widget.height ??
              65.h,
          width: widget.width ??
              331.w,
          child: TextFormField(
            onChanged: widget.onChanged,
            style: kSize12DarkW500Text.copyWith(
              height: 1.3,
            ),
            maxLength: widget.maxCharacters,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: <TextInputFormatter>[widget.inputFormatters],
            controller: widget.controller,
            validator: widget.validator,
            obscureText: widget.obscureText == true ? true : false,
            cursorColor: MyColors.black,
            decoration: InputDecoration(
              filled: true,
              fillColor: MyColors.white,
              counterText: "",
              hintText: widget.labelText,
              hintStyle: kSize12DarkW500Text,
              isDense: true,
              helperText: " ",
              helperStyle:kSize12DarkW500Text,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(34.r),
                borderSide: BorderSide(
                  color: MyColors.primary
                )
              ),
              suffixIcon: (widget.suffixIcon != null)
                  ? GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText!;
                    });
                  },
                  child: Icon(
                    widget.obscureText!
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 20,
                  ))
                  : null,
            ),
          ),
        ),
        widget.errorText != null ? Text(widget.errorText!, style: kSize12DarkW500Text.copyWith(color: MyColors.red),) : SizedBox.shrink()
      ],
    );
  }
}