import 'package:intl/intl.dart';

int? parseInt(dynamic value) {
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  if (value is double) return value.toInt();
  return null;
}

String tempFromDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
String removeSpecialChctr(input) {
  return input
      .toString()
      .replaceAll(RegExp(r'["\,]'), '``')
      .replaceAll(RegExp(r"['\,]"), '`');
}

List<String> extraCatList = [
  "Kitchen Note",
  "Discount",
  "Open Food",
  "New Order",
  "Orders",
  "Waiting List",
];
