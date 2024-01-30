import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/druhy_screen/models/druhy_model.dart';

/// A provider class for the DruhyScreen.
///
/// This provider manages the state of the DruhyScreen, including the
/// current druhyModelObj

// ignore_for_file: must_be_immutable
class DruhyProvider extends ChangeNotifier {
  TextEditingController faultsEditTextController = TextEditingController();

  TextEditingController carCardEditTextController = TextEditingController();

  TextEditingController setTemperatureEditTextController =
      TextEditingController();

  TextEditingController messagesEditTextController = TextEditingController();

  DruhyModel druhyModelObj = DruhyModel();

  @override
  void dispose() {
    super.dispose();
    faultsEditTextController.dispose();
    carCardEditTextController.dispose();
    setTemperatureEditTextController.dispose();
    messagesEditTextController.dispose();
  }
}
