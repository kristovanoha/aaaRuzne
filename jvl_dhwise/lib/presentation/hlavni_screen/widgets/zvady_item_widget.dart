import '../models/zvady_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class ZvadyItemWidget extends StatelessWidget {
  ZvadyItemWidget(
    this.zvadyItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  ZvadyItemModel zvadyItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 26.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        zvadyItemModelObj.zvady!,
        style: TextStyle(
          color: appTheme.lightBlue900,
          fontSize: 12.fSize,
          fontFamily: 'Lexend Exa',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (zvadyItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.whiteA700,
      selectedColor: appTheme.whiteA700,
      shape: (zvadyItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.whiteA700.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.lightBlue900,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
