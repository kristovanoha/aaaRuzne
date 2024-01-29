import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
    this.onTapViewHierarchy,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  VoidCallback? onTapViewHierarchy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapViewHierarchy!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(right: 59.h),
              child: Row(
                children: [
                  Text(
                    viewhierarchyItemModelObj.datumZadani!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      viewhierarchyItemModelObj.resitel!,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    viewhierarchyItemModelObj.stav!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              viewhierarchyItemModelObj.popisZavady!,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ],
        ),
      ),
    );
  }
}
