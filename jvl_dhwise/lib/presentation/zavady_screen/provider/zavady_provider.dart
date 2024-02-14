import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/zavady_screen/models/zavady_model.dart';
import '../models/viewhierarchylist_item_model.dart';
import '../models/viewhierarchylist1_item_model.dart';

/// A provider class for the ZavadyScreen.
///
/// This provider manages the state of the ZavadyScreen, including the
/// current zavadyModelObj

// ignore_for_file: must_be_immutable
class ZavadyProvider extends ChangeNotifier {
  ZavadyModel zavadyModelObj = ZavadyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
