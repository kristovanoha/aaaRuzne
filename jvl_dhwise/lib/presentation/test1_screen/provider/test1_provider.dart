import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/test1_screen/models/test1_model.dart';

/// A provider class for the Test1Screen.
///
/// This provider manages the state of the Test1Screen, including the
/// current test1ModelObj
class Test1Provider extends ChangeNotifier {
  Test1Model test1ModelObj = Test1Model();

  @override
  void dispose() {
    super.dispose();
  }
}
