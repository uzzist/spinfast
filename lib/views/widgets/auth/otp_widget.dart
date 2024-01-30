import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/values/my_colors.dart';

class CustomPinEntryField extends StatefulWidget {
  final String? lastPin;
  final int fields;
  final onSubmit;
  final double fieldWidth;
  final double fieldHeight;
  final textStyle;
  final isTextObscure;
  final InputDecoration? decoration;
  final bool showCursor;
  final TextInputType keyboard;

  const CustomPinEntryField(
      {this.lastPin,
        this.decoration,
        this.fields = 6,
        this.onSubmit,
        this.fieldHeight = 40,
        this.fieldWidth = 40,
        this.textStyle = const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xffffffff),
          fontSize: 18.0,
        ),
        this.showCursor = false,
        this.isTextObscure = false,
        this.keyboard = TextInputType.number})
      : assert(fields > 0);

  @override
  State createState() {
    return CustomPinEntryFieldState();
  }
}

class CustomPinEntryFieldState extends State<CustomPinEntryField> {
  late List<String?> _pin;
  late List<FocusNode?> _focusNodes;
  late List<TextEditingController?> _textControllers;

  Widget otpFields = Container();

  @override
  void initState() {
    super.initState();
    _pin = List<String?>.filled(widget.fields, null, growable: true);
    _focusNodes = List<FocusNode?>.filled(widget.fields, null, growable: true);
    _textControllers = List<TextEditingController?>.filled(widget.fields, null,
        growable: true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.lastPin != null) {
          for (var i = 0; i < widget.lastPin!.length; i++) {
            _pin[i] = widget.lastPin![i];
          }
        }
        otpFields = generateTextFields(context);
      });
    });
  }

  @override
  void dispose() {
    for (var t in _textControllers) {
      t!.dispose();
    }
    super.dispose();
  }

  Widget generateTextFields(BuildContext context) {
    List<Widget> textFields = List.generate(widget.fields, (int i) {
      return buildTextField(i, context);
    });

    if (_pin.first != null) {
      FocusScope.of(context).requestFocus(_focusNodes[0]);
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: textFields);
  }

  void clearTextFields() {
    for (var tEditController in _textControllers) {
      tEditController!.clear();
    }
    _pin.clear();
  }

  Widget buildTextField(int i, BuildContext context) {
    if (_focusNodes[i] == null) {
      _focusNodes[i] =
          FocusNode(onKeyEvent: (FocusNode focusNode, KeyEvent event) {
            if (event.logicalKey == LogicalKeyboardKey.backspace &&
                event is KeyDownEvent) {
              if (_textControllers[i]!.text.isEmpty) {
                if (i > 0) {
                  FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
                  _textControllers[i - 1]!.text = '';
                }
              } else {
                _textControllers[i]!.text = '';
              }
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          });
    }
    if (_textControllers[i] == null) {
      _textControllers[i] = TextEditingController();
      if (widget.lastPin != null) {
        _textControllers[i]!.text = widget.lastPin![i];
      }
    }

    _focusNodes[i]!.addListener(() {
      if (_focusNodes[i]!.hasFocus) {}
    });

    final String lastDigit = _textControllers[i]!.text;

    return Container(
      height: widget.fieldHeight,
      width: widget.fieldWidth,
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(color: MyColors.black)),
      margin: EdgeInsets.only(right: 10.w),
      //padding: EdgeInsets.only(top: getTabHeight(24)),
      child: Center(
        child: TextField(
          autofocus: true,
          maxLength: 1,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          showCursor: widget.showCursor,
          cursorColor: MyColors.white,
          controller: _textControllers[i],
          keyboardType: widget.keyboard,
          textAlign: TextAlign.center,
          style: widget.textStyle,
          focusNode: _focusNodes[i],
          obscureText: widget.isTextObscure,
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 12.h),
              counter: Offstage(),
              border: InputBorder.none
          ),
          onChanged: (String str) {
            setState(() {
              _pin[i] = str;
            });
            if (i + 1 != widget.fields) {
              //_focusNodes[i]!.unfocus();
              if (_pin[i] == '') {
                if (i > 0) {
                  FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
                }
              } else {
                FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
              }
            } else {
              //_focusNodes[i]!.unfocus();
              if (_pin[i] == '') {
                FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
              }
            }
            if (_pin.every((String? digit) => digit != null && digit != '')) {
              widget.onSubmit(_pin.join());
            }
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return otpFields;
  }
}