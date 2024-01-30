import '../../../core/app_export.dart';

/// This class is used in the [zvady_item_widget] screen.
class ZvadyItemModel {
  ZvadyItemModel({
    this.zvady,
    this.isSelected,
  }) {
    zvady = zvady ?? "Závady";
    isSelected = isSelected ?? false;
  }

  String? zvady;

  bool? isSelected;
}
