import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/kartavozu_screen/models/kartavozu_model.dart';
import '../models/twentynine_item_model.dart';

/// A provider class for the KartavozuScreen.
///
/// This provider manages the state of the KartavozuScreen, including the
/// current kartavozuModelObj

// ignore_for_file: must_be_immutable
class KartavozuProvider extends ChangeNotifier {
  TextEditingController rJDDvalueController = TextEditingController();

  TextEditingController valueController = TextEditingController();

  TextEditingController funknController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  KartavozuModel kartavozuModelObj = KartavozuModel();

  @override
  void dispose() {
    super.dispose();
    rJDDvalueController.dispose();
    valueController.dispose();
    funknController.dispose();
    descriptionController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    kartavozuModelObj.twentynineItemList.forEach((element) {
      element.isSelected = false;
    });
    kartavozuModelObj.twentynineItemList[index].isSelected = value;
    notifyListeners();
  }
}
