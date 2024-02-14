import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({
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
