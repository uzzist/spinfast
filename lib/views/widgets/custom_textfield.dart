import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/values/styles.dart';
import '../../utils/values/my_colors.dart';
import '../../utils/values/my_fonts.dart';

// class CustomTextField extends StatefulWidget {
//   TextEditingController? controller;
//   final double? height;
//   final double? width;
//   final double? fontSize;
//   final Color? background;
//   final TextInputType? keyboardType;
//   final TextInputFormatter inputFormatters;
//   final int? suffixIcon;
//   final String? errorText;
//   bool? obscureText;
//   FormFieldValidator<String>? validator;
//   ValueChanged<String>? onChanged;
//   final String? labelText;
//   final String? text;
//   final int? maxCharacters;
//
//   CustomTextField(
//       {this.height,
//         this.width,
//         this.fontSize,
//         this.background,
//         this.controller,
//         this.obscureText,
//         this.suffixIcon,
//         this.onChanged,
//         this.errorText,
//         required this.inputFormatters,
//         this.keyboardType,
//         this.validator,
//         this.labelText,
//         this.text, this.maxCharacters});
//
//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }
//
// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: widget.height ??
//               65.h,
//           width: widget.width ??
//               331.w,
//           child: TextFormField(
//             onChanged: widget.onChanged,
//             style: kSize12DarkW500Text.copyWith(
//               height: 1.3,
//             ),
//             maxLength: widget.maxCharacters,
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             inputFormatters: <TextInputFormatter>[widget.inputFormatters],
//             controller: widget.controller,
//             validator: widget.validator,
//             obscureText: widget.obscureText == true ? true : false,
//             cursorColor: MyColors.black,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: MyColors.white,
//               counterText: "",
//               hintText: widget.labelText,
//               hintStyle: kSize12DarkW500Text,
//               isDense: true,
//               helperText: " ",
//               helperStyle:kSize12DarkW500Text,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(34.r),
//                 borderSide: BorderSide(
//                   color: MyColors.primary
//                 )
//               ),
//               suffixIcon: (widget.suffixIcon != null)
//                   ? GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       widget.obscureText = !widget.obscureText!;
//                     });
//                   },
//                   child: Icon(
//                     widget.obscureText!
//                         ? Icons.visibility_off_outlined
//                         : Icons.visibility_outlined,
//                     size: 20,
//                   ))
//                   : null,
//             ),
//           ),
//         ),
//         widget.errorText != null ? Text(widget.errorText!, style: kSize12DarkW500Text.copyWith(color: MyColors.red),) : SizedBox.shrink()
//       ],
//     );
//   }
// }

class CustomTextField extends StatefulWidget {
  final double? height;
  final double? width;
  final int length;
  final TextInputType keyboardType;
  final TextInputFormatter inputFormatters;
  bool? Readonly = false;
  bool? showError;
  final Icon? prefexIcon;
  final IconData? suffixIcon;
  final InputBorder? border;
  final String? errorText;
  final FocusNode? focusNode;
  final String? suffixtext;
  final Color? hintColor;
  final Color? textColor;
  final Color? focusClr;
  final Color? backGroundClr;
  final Color? suffixIconColor;
  final int? maxlines;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final Function()? onEditingComplete;
  final bool? showEyeIcon;

  final Function()? onTap;
  final Function()? suffixIconTap;
  bool? obscureText;
  TextEditingController? controller;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;

  CustomTextField(
      {Key? key,
        this.height,
        this.width,
        this.controller,
        this.border,
        this.showError,
        this.showEyeIcon,
        this.maxlines,
        this.suffixIconColor,
        this.validator,
        this.suffixIconTap,
        this.focusClr,
        this.backGroundClr,
        this.onChanged,
        this.errorText,
        this.Readonly,
        this.focusNode,
        this.hintColor,
        this.textColor,
        this.prefexIcon,
        this.suffixIcon,
        this.obscureText,
        this.suffixtext,
        this.onTap,
        required this.length,
        required this.keyboardType,
        required this.inputFormatters,
        this.autovalidateMode,
        this.onEditingComplete,
        this.textInputAction})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.height ?? 43.h,
        width: widget.width ?? 331.w,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(34.r),
            boxShadow: [
              BoxShadow(
                  color: MyColors.black.withOpacity(.1),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(0, 10)
              ),
            ],
            //border: Border.all(color: MyColors.black)
          ),
          child: TextFormField(
            onTapOutside: (e) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            onTap: widget.onTap,
            autovalidateMode: widget.autovalidateMode == null
                ? AutovalidateMode.onUserInteraction
                : widget.autovalidateMode,
            maxLength: widget.length,
            autofocus: false,
            cursorHeight: 15,
            maxLines: widget.maxlines == null ? 1 : widget.maxlines,
            focusNode: widget.focusNode,
            validator: widget.validator == null
                ? (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            }
                : widget.validator,
            style: kSize12DarkW500Text.copyWith(height: 1.3),
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            onEditingComplete: widget.onEditingComplete,
            onChanged: widget.onChanged,
            inputFormatters: <TextInputFormatter>[widget.inputFormatters],
            textInputAction: widget.textInputAction == null
                ? TextInputAction.next
                : widget.textInputAction,
            readOnly: widget.Readonly == true ? true : false,
            obscureText: widget.obscureText == true ? true : false,
            decoration: InputDecoration(
              errorText: widget.errorText,
              fillColor: widget.backGroundClr ?? MyColors.white,
              filled: true,
              errorStyle: TextStyle(fontSize: 0),
              counterText: "",
              border: widget.border ?? InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: widget.showEyeIcon != null ? 12.h : 0.h),
              prefixIcon: widget.prefexIcon == null
                  ? null
                  : Padding(
                padding:
                EdgeInsets.only(bottom: 3.h),
                child: widget.prefexIcon,
              ),
              suffixIcon: (widget.showEyeIcon == null)
                  ? null
                  : GestureDetector(
                onTap: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText!;
                  });
                },
                child: Icon(
                  widget.obscureText!
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 20.h,
                  color: MyColors.black,
                ),
              ),
            ),
          ),
        ));
  }
}