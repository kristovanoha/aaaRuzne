import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.dateText,
    this.titleText,
    this.descriptionText,
    this.labelText,
    this.id,
  }) {
    dateText = dateText ?? "24.1.2024";
    titleText = titleText ?? "V řešení";
    descriptionText = descriptionText ?? "Závada číslo 12345 je v řešení.";
    labelText = labelText ?? "tech. disp.";
    id = id ?? "";
  }

  String? dateText;

  String? titleText;

  String? descriptionText;

  String? labelText;

  String? id;
}
