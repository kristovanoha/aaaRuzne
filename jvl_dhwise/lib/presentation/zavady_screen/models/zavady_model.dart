import '../../../core/app_export.dart';
import 'viewhierarchylist_item_model.dart';
import 'viewhierarchylist1_item_model.dart';

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

  List<Viewhierarchylist1ItemModel> viewhierarchylist1ItemList = [
    Viewhierarchylist1ItemModel(
        dateText: "1.1.2024",
        statusText: "vyřešeno",
        descriptionText: "Profukující těsnění u okna v kuchyni"),
    Viewhierarchylist1ItemModel(
        statusText: "Profukující těsnění u okna v kuchyni")
  ];
}
