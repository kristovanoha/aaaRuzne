import '../models/messageform_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class MessageformItemWidget extends StatelessWidget {
  MessageformItemWidget(
    this.messageformItemModelObj, {
    Key? key,
    this.onTapMessageForm,
  }) : super(
          key: key,
        );

  MessageformItemModel messageformItemModelObj;

  VoidCallback? onTapMessageForm;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMessageForm!.call();
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
              padding: EdgeInsets.only(right: 20.h),
              child: Row(
                children: [
                  Text(
                    messageformItemModelObj.admissionDate!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      messageformItemModelObj.subject!,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    messageformItemModelObj.sender!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
            Text(
              messageformItemModelObj.messageBody!,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ],
        ),
      ),
    );
  }
}
