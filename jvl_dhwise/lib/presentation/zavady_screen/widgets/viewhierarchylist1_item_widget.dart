import '../models/viewhierarchylist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class Viewhierarchylist1ItemWidget extends StatelessWidget {
  Viewhierarchylist1ItemWidget(
    this.viewhierarchylist1ItemModelObj, {
    Key? key,
    this.onTapViewHierarchy,
  }) : super(
          key: key,
        );

  Viewhierarchylist1ItemModel viewhierarchylist1ItemModelObj;

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
                      viewhierarchylist1ItemModelObj.dateText!,
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  Text(
                    viewhierarchylist1ItemModelObj.statusText!,
                    style: CustomTextStyles.bodySmallOnError,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Text(
              viewhierarchylist1ItemModelObj.descriptionText!,
              style: CustomTextStyles.bodySmallOnError,
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
