import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/druhy_screen/models/druhy_model.dart';

/// A provider class for the DruhyScreen.
///
/// This provider manages the state of the DruhyScreen, including the
/// current druhyModelObj

// ignore_for_file: must_be_immutable
class DruhyProvider extends ChangeNotifier {
  TextEditingController faultsController = TextEditingController();

  TextEditingController carCardController = TextEditingController();

  TextEditingController setTemperatureController = TextEditingController();

  TextEditingController messagesController = TextEditingController();

  DruhyModel druhyModelObj = DruhyModel();

  @override
  void dispose() {
    super.dispose();
    faultsController.dispose();
    carCardController.dispose();
    setTemperatureController.dispose();
    messagesController.dispose();
  }
}
