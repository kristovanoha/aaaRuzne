import '../../../core/app_export.dart';
import 'messagelist_item_model.dart';
import 'viewhierarchy1_item_model.dart';

class SeznamzpravModel {
  List<MessagelistItemModel> messagelistItemList = [
    MessagelistItemModel(
        admissionDate: "datum přijetí",
        subject: "předmět",
        sender: "odesílatel",
        messageBody: "tělo zprávy"),
    MessagelistItemModel(
        admissionDate: "24.1.2024",
        subject: "Fidorky nejsou",
        sender: "dispečink",
        messageBody: "Nedostatek Fidorek nahraďte dostatke..."),
    MessagelistItemModel(
        admissionDate: "24.1.2024",
        subject: "Svíčková",
        sender: "dispečink",
        messageBody: "Svíčková je super, ale je jí málo."),
    MessagelistItemModel(messageBody: "tech. disp.")
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
