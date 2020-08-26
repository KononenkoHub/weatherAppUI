import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

 getCurentDay(){
  String resString = '';
  var now = DateTime.now();
  String day = DateFormat('dd').format(now);
  String month = DateFormat('MM').format(now);
  return day +'.'+month;
}
