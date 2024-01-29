import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';
import 'twentysix_item_model.dart';

class ZavadyModel {
  List<ViewhierarchyItemModel> viewhierarchyItemList = [
    ViewhierarchyItemModel(
        datumZadani: "datum zadání",
        resitel: "řešitel",
        stav: "stav",
        popisZavady: "popis závady"),
    ViewhierarchyItemModel(popisZavady: "Rozbitá klika u dvířek pod barem"),
    ViewhierarchyItemModel(popisZavady: "Profukující těsnění u okna v kuchyni"),
    ViewhierarchyItemModel(popisZavady: "Profukující těsnění u okna v kuchyni")
  ];

  List<TwentysixItemModel> twentysixItemList = [
    TwentysixItemModel(
        dateText: "1.1.2024",
        resolvedText: "vyřešeno",
        windowSealText: "Profukující těsnění u okna v kuchyni"),
    TwentysixItemModel(resolvedText: "Profukující těsnění u okna v kuchyni")
  ];
}
