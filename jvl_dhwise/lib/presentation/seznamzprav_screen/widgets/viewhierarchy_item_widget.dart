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
        decoration: AppDecoration.outlineOnError1.copyWith(
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
                        style: CustomTextStyles.labelLargeOnError,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          viewhierarchyItemModelObj.titleText!,
                          style: CustomTextStyles.labelLargeOnError,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    viewhierarchyItemModelObj.descriptionText!,
                    style: CustomTextStyles.bodySmallOnError,
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
                viewhierarchyItemModelObj.labelText!,
                style: CustomTextStyles.labelLargeOnError,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
