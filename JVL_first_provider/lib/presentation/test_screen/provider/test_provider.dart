import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/test_screen/models/test_model.dart';

/// A provider class for the TestScreen.
///
/// This provider manages the state of the TestScreen, including the
/// current testModelObj

// ignore_for_file: must_be_immutable
class TestProvider extends ChangeNotifier {
  TestModel testModelObj = TestModel();

  @override
  void dispose() {
    super.dispose();
  }
}
