import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xgen_machine_task/shared/constant/colors.dart';
import 'package:xgen_machine_task/shared/routes/navigator.dart';

void kSnackBar({
  required String content,
  double? height,
  Color color = kWhite30,
  IconData? icon,
  int duration = 3000,
  bool error = false,
  bool success = false,
  bool warning = false,
  bool delete = false,
  bool update = false,
  bool floating = false,
  bool infinite = false,
  SnackBarAction? action,
}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).hideCurrentSnackBar();

  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      content: SizedBox(
        height: height,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: kSnackBarIconColor,
                size: 18.sp,
              )
            else
              error == true
                  ? Icon(
                      Icons.error_outline,
                      color: kSnackBarIconColor,
                      size: 18.sp,
                    )
                  : success == true
                      ? Icon(
                          Icons.done,
                          color: kSnackBarIconColor,
                          size: 18.sp,
                        )
                      : delete == true
                          ? Icon(
                              Icons.delete,
                              color: kSnackBarIconColor,
                              size: 18.sp,
                            )
                          : update == true
                              ? Icon(
                                  Icons.update,
                                  color: kSnackBarIconColor,
                                  size: 18.sp,
                                )
                              : const SizedBox(),
            const VerticalDivider(width: 5),
            Flexible(
              child: Text(
                content,
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                // style: FontPalette.cabin16.copyWith(color: kWhite),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: error
          ? kColorStateCritical
          : success
              ? kColorStateSuccess
              : warning
                  ? kColorStateWarning
                  : delete
                      ? kColorStateCritical
                      : update
                          ? kColorStateInfo
                          : color,
      duration:
          infinite ? const Duration(days: 1) : Duration(milliseconds: duration),
      behavior: floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      action: action,
    ),
  );
}