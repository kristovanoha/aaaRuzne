import '../models/viewhierarchylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(
    this.viewhierarchylistItemModelObj, {
    Key? key,
    this.onTapViewHierarchy,
  }) : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

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
                    viewhierarchylistItemModelObj.datumZadani!,
                    style: CustomTextStyles.bodySmallErrorContainer,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      viewhierarchylistItemModelObj.resitel!,
                      style: CustomTextStyles.bodySmallErrorContainer,
                    ),
                  ),
                  Spacer(),
                  Text(
                    viewhierarchylistItemModelObj.stav!,
                    style: CustomTextStyles.bodySmallErrorContainer,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              viewhierarchylistItemModelObj.popisZavady!,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ],
        ),
      ),
    );
  }
}
