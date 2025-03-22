import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xgen_machine_task/shared/constant/colors.dart';
import 'package:xgen_machine_task/shared/theme/font_palette.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({
    super.key,
    this.labelText,
    this.topLabelText,
    this.hintText,
    this.textStyle,
    this.hintStyle,
    this.isHint = false,
    this.textInputType,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.textDirection,
    this.maxLines,
    this.maxLength,
    this.couterText,
    this.hideCounterText = false,
    this.controller,
    this.inputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: greyColor),
    ),
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.autovalidateMode,
    this.validator,
    this.errorStyle = true,
    this.errorText,
    this.focusNode,
    this.enabled,
    this.isDense = true,
    this.contentPadding = const EdgeInsets.all(14),
    this.constraints,
    this.readOnly,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.obscureText,
    this.floatingLabelBehavior,
    this.fillColor = kFieldFillColor,
    this.errorColor = kColorStateCritical,
    this.fontSize,
    this.hintSize,
    this.textAlign = TextAlign.start,
    this.fontColor,
    this.isRequired = false,
    this.hight,
    this.initialValue,
  });
  final String? initialValue;
  final String? labelText;
  final String? topLabelText;
  final String? hintText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool isHint;
  final TextInputType? textInputType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final TextDirection? textDirection;
  final int? maxLines, maxLength;
  final String? couterText;
  final bool hideCounterText;
  final InputBorder? inputBorder;
  final Color? borderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final bool? enabled;
  final bool? readOnly;
  final bool? isDense;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final Function()? onTap;
  final BoxConstraints? constraints;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText;
  final bool errorStyle;
  final String? errorText;
  final Color? fontColor, fillColor, errorColor;
  final double? fontSize, hintSize;
  final TextAlign textAlign;
  final bool isRequired;
  final double? hight;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topLabelText != null)
          Column(
            children: [
              Text.rich(
                TextSpan(
                  text: topLabelText!,
                  children: [
                    TextSpan(
                      text: isRequired ? ' *' : '',
                      style: const TextStyle(color: kRed400),
                    ),
                  ],
                ),
                style: FontPalette.manrope13.copyWith(
                  color: kBlueGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              8.horizontalSpace,
            ],
          ),
        5.verticalSpace,
        SizedBox(
          height: hight,
          child: TextFormField(
            // initialValue: initialValue,
            controller: controller,
            style:
                textStyle ??
                FontPalette.manrope14.copyWith(
                  color: fontColor,
                  fontSize: fontSize ?? 15.sp,
                  fontWeight: FontWeight.w400,
                ),
            textAlign: textAlign,
            decoration: InputDecoration(
              counter: const Offstage(),
              floatingLabelBehavior: floatingLabelBehavior,
              counterText: hideCounterText ? '' : couterText,
              labelText: isHint ? null : labelText,
              border: inputBorder,
              focusedBorder: inputBorder?.copyWith(
                borderSide: const BorderSide(color: primaryColor),
              ),
              disabledBorder: inputBorder,
              enabledBorder: inputBorder,
              focusedErrorBorder: inputBorder,
              errorBorder: inputBorder?.copyWith(
                borderSide: const BorderSide(color: kColorStateCritical),
              ),
              labelStyle: const TextStyle(color: klabelColorGrey, fontSize: 13),
              fillColor: fillColor,
              filled: true,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              suffixIconConstraints: suffixIconConstraints,
              hintText: isHint ? labelText : hintText,
              hintStyle:
                  hintStyle ??
                  TextStyle(fontSize: hintSize ?? 12.sp, color: kBlack),
              isDense: isDense,
              errorText: errorText,
              errorStyle:
                  errorStyle
                      ? TextStyle(color: errorColor, fontSize: 10.sp, height: 1)
                      : const TextStyle(fontSize: 0.01),
              constraints: constraints,
              contentPadding: contentPadding,
            ),
            keyboardType: textInputType ?? TextInputType.text,
            textCapitalization: textCapitalization,
            inputFormatters: inputFormatters,
            textDirection: textDirection ?? TextDirection.ltr,
            maxLines: maxLines ?? 1,
            maxLength: maxLength,
            autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
            validator: validator,
            focusNode: focusNode,
            enabled: enabled ?? true,
            readOnly: readOnly ?? false,
            onSaved: onSaved,
            onChanged: onChanged,
            onTap: onTap,
            obscureText: obscureText ?? false,
          ),
        ),
      ],
    );
  }
}
