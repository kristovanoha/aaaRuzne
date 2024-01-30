import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';
import 'twentysix_item_model.dart';

class ZavadyModel {
  List<ViewhierarchyItemModel> viewhierarchyItemList = [
    ViewhierarchyItemModel(
        datumZadaniText: "datum zadání",
        resitelText: "řešitel",
        stavText: "stav",
        popisZavadyText: "popis závady"),
    ViewhierarchyItemModel(popisZavadyText: "Rozbitá klika u dvířek pod barem"),
    ViewhierarchyItemModel(
        popisZavadyText: "Profukující těsnění u okna v kuchyni"),
    ViewhierarchyItemModel(
        popisZavadyText: "Profukující těsnění u okna v kuchyni")
  ];

  List<TwentysixItemModel> twentysixItemList = [
    TwentysixItemModel(
        dateText: "1.1.2024",
        resolvedText: "vyřešeno",
        windowSealText: "Profukující těsnění u okna v kuchyni"),
    TwentysixItemModel(resolvedText: "Profukující těsnění u okna v kuchyni")
  ];
}
