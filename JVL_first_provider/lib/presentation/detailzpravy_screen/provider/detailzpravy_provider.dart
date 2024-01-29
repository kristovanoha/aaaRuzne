import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/detailzpravy_screen/models/detailzpravy_model.dart';

/// A provider class for the DetailzpravyScreen.
///
/// This provider manages the state of the DetailzpravyScreen, including the
/// current detailzpravyModelObj

// ignore_for_file: must_be_immutable
class DetailzpravyProvider extends ChangeNotifier {
  TextEditingController rjddThirtyFourEditTextController =
      TextEditingController();

  TextEditingController thirtyFiveEditTextController = TextEditingController();

  TextEditingController ohnutaNohaEditTextController = TextEditingController();

  DetailzpravyModel detailzpravyModelObj = DetailzpravyModel();

  @override
  void dispose() {
    super.dispose();
    rjddThirtyFourEditTextController.dispose();
    thirtyFiveEditTextController.dispose();
    ohnutaNohaEditTextController.dispose();
  }
}
