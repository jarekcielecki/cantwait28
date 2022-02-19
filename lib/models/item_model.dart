import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.relaseData,
  });

  final String id;
  final String title;
  final String imageUrl;
  final DateTime relaseData;

  String daysLeft() {
    return relaseData.difference(DateTime.now()).inDays.toString();
  }

  String relaseDateFormatted() {
    return DateFormat.yMMMEd().format(relaseData);
  }
}
