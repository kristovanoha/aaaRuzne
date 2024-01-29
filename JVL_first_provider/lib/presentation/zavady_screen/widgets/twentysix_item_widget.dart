import '../models/twentysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class TwentysixItemWidget extends StatelessWidget {
  TwentysixItemWidget(
    this.twentysixItemModelObj, {
    Key? key,
    this.onTapTwentySix,
  }) : super(
          key: key,
        );

  TwentysixItemModel twentysixItemModelObj;

  VoidCallback? onTapTwentySix;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTwentySix!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlineGray500.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      twentysixItemModelObj.dateText!,
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Text(
                    twentysixItemModelObj.resolvedText!,
                    style: CustomTextStyles.bodySmallGray500,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Text(
              twentysixItemModelObj.windowSealText!,
              style: CustomTextStyles.bodySmallGray500,
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
