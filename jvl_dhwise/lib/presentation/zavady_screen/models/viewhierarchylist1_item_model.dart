import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist1_item_widget] screen.
class Viewhierarchylist1ItemModel {
  Viewhierarchylist1ItemModel({
    this.dateText,
    this.statusText,
    this.descriptionText,
    this.id,
  }) {
    dateText = dateText ?? "1.1.2024";
    statusText = statusText ?? "vyřešeno";
    descriptionText = descriptionText ?? "Profukující těsnění u okna v kuchyni";
    id = id ?? "";
  }

  String? dateText;

  String? statusText;

  String? descriptionText;

  String? id;
}
