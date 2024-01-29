import '../models/messagelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class MessagelistItemWidget extends StatelessWidget {
  MessagelistItemWidget(
    this.messagelistItemModelObj, {
    Key? key,
    this.onTapMessageForm,
  }) : super(
          key: key,
        );

  MessagelistItemModel messagelistItemModelObj;

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
                    messagelistItemModelObj.admissionDate!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      messagelistItemModelObj.subject!,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    messagelistItemModelObj.sender!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
            Text(
              messagelistItemModelObj.messageBody!,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ],
        ),
      ),
    );
  }
}
