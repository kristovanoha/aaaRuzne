import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.datumZadani,
    this.resitel,
    this.stav,
    this.popisZavady,
    this.id,
  }) {
    datumZadani = datumZadani ?? "datum zadání";
    resitel = resitel ?? "řešitel";
    stav = stav ?? "stav";
    popisZavady = popisZavady ?? "popis závady";
    id = id ?? "";
  }

  String? datumZadani;

  String? resitel;

  String? stav;

  String? popisZavady;

  String? id;
}
