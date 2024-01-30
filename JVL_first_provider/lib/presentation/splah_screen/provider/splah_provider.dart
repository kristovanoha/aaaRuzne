import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/splah_screen/models/splah_model.dart';

/// A provider class for the SplahScreen.
///
/// This provider manages the state of the SplahScreen, including the
/// current splahModelObj

// ignore_for_file: must_be_immutable
class SplahProvider extends ChangeNotifier {
  SplahModel splahModelObj = SplahModel();

  @override
  void dispose() {
    super.dispose();
  }
}
