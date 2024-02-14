import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.datumZadaniText,
    this.resitelText,
    this.stavText,
    this.popisZavadyText,
    this.id,
  }) {
    datumZadaniText = datumZadaniText ?? "datum zadání";
    resitelText = resitelText ?? "řešitel";
    stavText = stavText ?? "stav";
    popisZavadyText = popisZavadyText ?? "popis závady";
    id = id ?? "";
  }

  String? datumZadaniText;

  String? resitelText;

  String? stavText;

  String? popisZavadyText;

  String? id;
}
