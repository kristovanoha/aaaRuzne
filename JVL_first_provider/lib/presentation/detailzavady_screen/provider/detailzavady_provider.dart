import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/presentation/detailzavady_screen/models/detailzavady_model.dart';
import '../models/detailzavady_item_model.dart';

/// A provider class for the DetailzavadyScreen.
///
/// This provider manages the state of the DetailzavadyScreen, including the
/// current detailzavadyModelObj

// ignore_for_file: must_be_immutable
class DetailzavadyProvider extends ChangeNotifier {
  TextEditingController rJDDThirtyFourController = TextEditingController();

  TextEditingController novController = TextEditingController();

  TextEditingController frantiekNovkController = TextEditingController();

  TextEditingController nepiazenController = TextEditingController();

  TextEditingController ostatnController = TextEditingController();

  TextEditingController thirtySixController = TextEditingController();

  DetailzavadyModel detailzavadyModelObj = DetailzavadyModel();

  @override
  void dispose() {
    super.dispose();
    rJDDThirtyFourController.dispose();
    novController.dispose();
    frantiekNovkController.dispose();
    nepiazenController.dispose();
    ostatnController.dispose();
    thirtySixController.dispose();
  }
}
