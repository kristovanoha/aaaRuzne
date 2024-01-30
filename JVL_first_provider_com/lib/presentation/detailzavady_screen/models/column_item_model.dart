import '../../../core/app_export.dart';

/// This class is used in the [column_item_widget] screen.
class ColumnItemModel {
  ColumnItemModel({
    this.dynamicText,
    this.id,
  }) {
    dynamicText = dynamicText ?? "Výčepní zařízení";
    id = id ?? "";
  }

  String? dynamicText;

  String? id;
}
