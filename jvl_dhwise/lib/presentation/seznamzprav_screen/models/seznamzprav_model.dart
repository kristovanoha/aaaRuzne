import '../../../core/app_export.dart';
import 'messagelist_item_model.dart';
import 'userprofilelist_item_model.dart';

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

  List<UserprofilelistItemModel> userprofilelistItemList = [
    UserprofilelistItemModel(
        dateText: "24.1.2024",
        descriptionText: "V řešení",
        errorText: "Závada číslo 12345 je v řešení.",
        techDispText: "tech. disp."),
    UserprofilelistItemModel(techDispText: "Svíčková je super, ale je jí málo.")
  ];
}
