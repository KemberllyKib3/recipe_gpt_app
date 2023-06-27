import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isMacOS) {
    setWindowTitle("Recipe GPT");
    setWindowMinSize(const Size(450, 600));
  }
  if (Platform.isLinux) setWindowTitle("Recipe GPT");

  runApp(const App());
}
