import '../../../core/app_export.dart';
import 'messageform_item_model.dart';
import 'viewhierarchy1_item_model.dart';

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

  List<Viewhierarchy1ItemModel> viewhierarchy1ItemList = [
    Viewhierarchy1ItemModel(
        dateText: "24.1.2024",
        titleText: "V řešení",
        descriptionText: "Závada číslo 12345 je v řešení.",
        labelText: "tech. disp."),
    Viewhierarchy1ItemModel(labelText: "Svíčková je super, ale je jí málo.")
  ];
}
