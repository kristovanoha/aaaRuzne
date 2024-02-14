import '../../../core/app_export.dart';

/// This class is used in the [detailzavady_item_widget] screen.
class DetailzavadyItemModel {
  DetailzavadyItemModel({
    this.vEpnZaZen,
    this.id,
  }) {
    vEpnZaZen = vEpnZaZen ?? "Výčepní zařízení";
    id = id ?? "";
  }

  String? vEpnZaZen;

  String? id;
}
