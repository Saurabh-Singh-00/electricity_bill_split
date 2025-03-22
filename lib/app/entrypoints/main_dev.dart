import 'package:flutter/material.dart';
import 'package:myapp/app/entrypoints/app.dart';
import 'package:myapp/app/entrypoints/main_common.dart';

void main() {
  mainCommon(() {
    runApp(const BillSplitApp());
  });
}
