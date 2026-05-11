import 'package:intl/intl.dart';

void main() {
  var now = DateTime.now();
  //  String formatted = DateFormat('dd MMMM, yyyy').format(now);
  String formatted = DateFormat("EEEE, dd MMM 'at' h a").format(now);
  print(formatted);
}
// 2026-05-11 21:08:25.494613
// 26 March, 2025
// Sunday, 30 May at 7 Pm