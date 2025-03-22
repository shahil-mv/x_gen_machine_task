import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xgen_machine_task/shared/app/constant/colors.dart';

Decoration cardDecorations(Color? color) => BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(4.r)),
      border: Border.all(color: color ?? kGrey300),
    );

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: kGrey300),
    borderRadius: BorderRadius.all(Radius.circular(10.r)));
