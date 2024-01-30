import '../../../core/app_export.dart';
import 'viewhierarchylist_item_model.dart';
import 'twentysixlist_item_model.dart';

class ZavadyModel {
  List<ViewhierarchylistItemModel> viewhierarchylistItemList = [
    ViewhierarchylistItemModel(
        datumZadani: "datum zadání",
        resitel: "řešitel",
        stav: "stav",
        popisZavady: "popis závady"),
    ViewhierarchylistItemModel(popisZavady: "Rozbitá klika u dvířek pod barem"),
    ViewhierarchylistItemModel(
        popisZavady: "Profukující těsnění u okna v kuchyni"),
    ViewhierarchylistItemModel(
        popisZavady: "Profukující těsnění u okna v kuchyni")
  ];

  List<TwentysixlistItemModel> twentysixlistItemList = [
    TwentysixlistItemModel(
        dateText: "1.1.2024",
        resolvedText: "vyřešeno",
        windowSealText: "Profukující těsnění u okna v kuchyni"),
    TwentysixlistItemModel(resolvedText: "Profukující těsnění u okna v kuchyni")
  ];
}
