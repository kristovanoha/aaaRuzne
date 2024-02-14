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
        decoration: AppDecoration.outlineOnError.copyWith(
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
                    viewhierarchyItemModelObj.datumZadaniText!,
                    style: CustomTextStyles.bodySmallErrorContainer,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      viewhierarchyItemModelObj.resitelText!,
                      style: CustomTextStyles.bodySmallErrorContainer,
                    ),
                  ),
                  Spacer(),
                  Text(
                    viewhierarchyItemModelObj.stavText!,
                    style: CustomTextStyles.bodySmallErrorContainer,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              viewhierarchyItemModelObj.popisZavadyText!,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ],
        ),
      ),
    );
  }
}
