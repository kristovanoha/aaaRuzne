import '../../../core/app_export.dart';

/// This class is used in the [twentynine_item_widget] screen.
class TwentynineItemModel {
  TwentynineItemModel({
    this.vepnzazen,
    this.isSelected,
  }) {
    vepnzazen = vepnzazen ?? "Výčepní zařízení";
    isSelected = isSelected ?? false;
  }

  String? vepnzazen;

  bool? isSelected;
}
