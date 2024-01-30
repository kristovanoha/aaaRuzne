import '../models/twentysixlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class TwentysixlistItemWidget extends StatelessWidget {
  TwentysixlistItemWidget(
    this.twentysixlistItemModelObj, {
    Key? key,
    this.onTapTwentySix,
  }) : super(
          key: key,
        );

  TwentysixlistItemModel twentysixlistItemModelObj;

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
        decoration: AppDecoration.outlineOnError1.copyWith(
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
                      twentysixlistItemModelObj.dateText!,
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  Text(
                    twentysixlistItemModelObj.resolvedText!,
                    style: CustomTextStyles.bodySmallOnError,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Text(
              twentysixlistItemModelObj.windowSealText!,
              style: CustomTextStyles.bodySmallOnError,
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
