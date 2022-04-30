import 'dart:io';

import 'package:flutter/material.dart' as material;
import 'package:fluent_ui/fluent_ui.dart' as fluent;

get lightTheme {
  if (Platform.isWindows) {
    return fluent.ThemeData.light().copyWith(
      scaffoldBackgroundColor: fluent.Colors.grey[10],
    );
  } else {
    return material.ThemeData.light().copyWith(
      appBarTheme:
          material.AppBarTheme(backgroundColor: material.Colors.blueGrey[900]),
    );
  }
}
