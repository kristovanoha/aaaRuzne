import '../models/vepnzazenchipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';

// ignore: must_be_immutable
class VepnzazenchipviewItemWidget extends StatelessWidget {
  VepnzazenchipviewItemWidget(
    this.vepnzazenchipviewItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  VepnzazenchipviewItemModel vepnzazenchipviewItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 22.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        vepnzazenchipviewItemModelObj.vepnzazen!,
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Lexend Exa',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (vepnzazenchipviewItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onPrimary,
      selectedColor: theme.colorScheme.onPrimary,
      shape: (vepnzazenchipviewItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimary.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.primary,
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
