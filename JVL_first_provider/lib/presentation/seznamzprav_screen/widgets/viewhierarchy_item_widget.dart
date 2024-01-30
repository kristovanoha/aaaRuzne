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
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineGray500.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        viewhierarchyItemModelObj.dateText!,
                        style: CustomTextStyles.labelLargeGray500,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          viewhierarchyItemModelObj.descriptionText!,
                          style: CustomTextStyles.labelLargeGray500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    viewhierarchyItemModelObj.errorText!,
                    style: CustomTextStyles.bodySmallGray500,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 27.v,
              ),
              child: Text(
                viewhierarchyItemModelObj.techDispText!,
                style: CustomTextStyles.labelLargeGray500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
