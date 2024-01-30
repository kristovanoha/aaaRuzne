import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.dateText,
    this.descriptionText,
    this.errorText,
    this.techDispText,
    this.id,
  }) {
    dateText = dateText ?? "24.1.2024";
    descriptionText = descriptionText ?? "V řešení";
    errorText = errorText ?? "Závada číslo 12345 je v řešení.";
    techDispText = techDispText ?? "tech. disp.";
    id = id ?? "";
  }

  String? dateText;

  String? descriptionText;

  String? errorText;

  String? techDispText;

  String? id;
}
