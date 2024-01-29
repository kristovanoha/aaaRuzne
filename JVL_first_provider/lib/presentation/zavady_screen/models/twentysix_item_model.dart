import '../../../core/app_export.dart';

/// This class is used in the [twentysix_item_widget] screen.
class TwentysixItemModel {
  TwentysixItemModel({
    this.dateText,
    this.resolvedText,
    this.windowSealText,
    this.id,
  }) {
    dateText = dateText ?? "1.1.2024";
    resolvedText = resolvedText ?? "vyřešeno";
    windowSealText = windowSealText ?? "Profukující těsnění u okna v kuchyni";
    id = id ?? "";
  }

  String? dateText;

  String? resolvedText;

  String? windowSealText;

  String? id;
}
