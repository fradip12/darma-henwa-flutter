import 'package:apps_satu/arguments/detail_arguments.dart';
import 'package:flutter/material.dart';

class DetailController extends ChangeNotifier {
  // Logic nampung data
  DetailArguments? dataArguments;

  // Event/ Method
  void selectData(DetailArguments data) {
    dataArguments = data;
    notifyListeners();
  }
}
