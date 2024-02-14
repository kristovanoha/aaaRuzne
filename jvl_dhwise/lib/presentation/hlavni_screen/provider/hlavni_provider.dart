import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/hlavni_screen/models/hlavni_model.dart';
import '../models/zvady_item_model.dart';

/// A provider class for the HlavniScreen.
///
/// This provider manages the state of the HlavniScreen, including the
/// current hlavniModelObj

// ignore_for_file: must_be_immutable
class HlavniProvider extends ChangeNotifier {
  HlavniModel hlavniModelObj = HlavniModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    hlavniModelObj.zvadyItemList.forEach((element) {
      element.isSelected = false;
    });
    hlavniModelObj.zvadyItemList[index].isSelected = value;
    notifyListeners();
  }
}
