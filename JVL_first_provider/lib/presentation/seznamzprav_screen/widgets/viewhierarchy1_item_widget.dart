import '../models/viewhierarchy1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
    this.onTapViewHierarchy,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

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
                        viewhierarchy1ItemModelObj.dateText!,
                        style: CustomTextStyles.labelLargeGray500,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          viewhierarchy1ItemModelObj.titleText!,
                          style: CustomTextStyles.labelLargeGray500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    viewhierarchy1ItemModelObj.descriptionText!,
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
                viewhierarchy1ItemModelObj.labelText!,
                style: CustomTextStyles.labelLargeGray500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
