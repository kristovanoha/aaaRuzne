import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
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
                        userprofilelistItemModelObj.dateText!,
                        style: CustomTextStyles.labelLargeOnError,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          userprofilelistItemModelObj.descriptionText!,
                          style: CustomTextStyles.labelLargeOnError,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    userprofilelistItemModelObj.errorText!,
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
                userprofilelistItemModelObj.techDispText!,
                style: CustomTextStyles.labelLargeOnError,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
