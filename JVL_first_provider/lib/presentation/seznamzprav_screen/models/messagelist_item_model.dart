import '../../../core/app_export.dart';

/// This class is used in the [messagelist_item_widget] screen.
class MessagelistItemModel {
  MessagelistItemModel({
    this.admissionDate,
    this.subject,
    this.sender,
    this.messageBody,
    this.id,
  }) {
    admissionDate = admissionDate ?? "datum přijetí";
    subject = subject ?? "předmět";
    sender = sender ?? "odesílatel";
    messageBody = messageBody ?? "tělo zprávy";
    id = id ?? "";
  }

  String? admissionDate;

  String? subject;

  String? sender;

  String? messageBody;

  String? id;
}
