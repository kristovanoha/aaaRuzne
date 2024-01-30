import '../../../core/app_export.dart';

/// This class is used in the [vepnzazenchipview_item_widget] screen.
class VepnzazenchipviewItemModel {
  VepnzazenchipviewItemModel({
    this.vepnzazen,
    this.isSelected,
  }) {
    vepnzazen = vepnzazen ?? "Výčepní zařízení";
    isSelected = isSelected ?? false;
  }

  String? vepnzazen;

  bool? isSelected;
}
