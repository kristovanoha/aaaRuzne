import '../../../core/app_export.dart';
import 'messageform_item_model.dart';
import 'viewhierarchy_item_model.dart';

class SeznamzpravModel {
  List<MessageformItemModel> messageformItemList = [
    MessageformItemModel(
        admissionDate: "datum přijetí",
        subject: "předmět",
        sender: "odesílatel",
        messageBody: "tělo zprávy"),
    MessageformItemModel(
        admissionDate: "24.1.2024",
        subject: "Fidorky nejsou",
        sender: "dispečink",
        messageBody: "Nedostatek Fidorek nahraďte dostatke..."),
    MessageformItemModel(
        admissionDate: "24.1.2024",
        subject: "Svíčková",
        sender: "dispečink",
        messageBody: "Svíčková je super, ale je jí málo."),
    MessageformItemModel(messageBody: "tech. disp.")
  ];

  List<ViewhierarchyItemModel> viewhierarchyItemList = [
    ViewhierarchyItemModel(
        dateText: "24.1.2024",
        descriptionText: "V řešení",
        errorText: "Závada číslo 12345 je v řešení.",
        techDispText: "tech. disp."),
    ViewhierarchyItemModel(techDispText: "Svíčková je super, ale je jí málo.")
  ];
}
