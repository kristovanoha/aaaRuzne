import '../../../core/app_export.dart';

/// This class is used in the [twentyone_item_widget] screen.
class TwentyoneItemModel {
  TwentyoneItemModel({
    this.zvady,
    this.isSelected,
  }) {
    zvady = zvady ?? "Závady";
    isSelected = isSelected ?? false;
  }

  String? zvady;

  bool? isSelected;
}
