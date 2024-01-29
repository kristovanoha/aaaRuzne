import '../models/detailzavady_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class DetailzavadyItemWidget extends StatelessWidget {
  DetailzavadyItemWidget(
    this.detailzavadyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DetailzavadyItemModel detailzavadyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(17.h),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 7.v),
            SizedBox(
              width: 57.h,
              child: Text(
                detailzavadyItemModelObj.vEpnZaZen!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
