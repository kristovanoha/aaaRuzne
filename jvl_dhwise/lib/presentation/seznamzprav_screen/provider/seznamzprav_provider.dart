import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/seznamzprav_screen/models/seznamzprav_model.dart';
import '../models/messagelist_item_model.dart';
import '../models/userprofilelist_item_model.dart';

/// A provider class for the SeznamzpravScreen.
///
/// This provider manages the state of the SeznamzpravScreen, including the
/// current seznamzpravModelObj

// ignore_for_file: must_be_immutable
class SeznamzpravProvider extends ChangeNotifier {
  SeznamzpravModel seznamzpravModelObj = SeznamzpravModel();

  @override
  void dispose() {
    super.dispose();
  }
}
