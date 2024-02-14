import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/detailzpravytwo_screen/models/detailzpravytwo_model.dart';

/// A provider class for the DetailzpravytwoScreen.
///
/// This provider manages the state of the DetailzpravytwoScreen, including the
/// current detailzpravytwoModelObj

// ignore_for_file: must_be_immutable
class DetailzpravytwoProvider extends ChangeNotifier {
  TextEditingController chladnikaKuchyController = TextEditingController();

  TextEditingController dateTimeEditTextController = TextEditingController();

  TextEditingController noteValueEditTextController = TextEditingController();

  DetailzpravytwoModel detailzpravytwoModelObj = DetailzpravytwoModel();

  @override
  void dispose() {
    super.dispose();
    chladnikaKuchyController.dispose();
    dateTimeEditTextController.dispose();
    noteValueEditTextController.dispose();
  }
}
