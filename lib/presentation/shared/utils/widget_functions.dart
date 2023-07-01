import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetFunctions {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<T?> push<T>(BuildContext context, WidgetBuilder widgetBuilder) {
    return Navigator.push<T>(
      context,
      Platform.isIOS || Platform.isMacOS
          ? CupertinoPageRoute(builder: widgetBuilder)
          : MaterialPageRoute(builder: widgetBuilder),
    );
  }

  static Future<T?> pushReplacement<T>(
      BuildContext context, WidgetBuilder widgetBuilder) {
    return Navigator.pushReplacement(
      context,
      Platform.isIOS || Platform.isMacOS
          ? CupertinoPageRoute(builder: widgetBuilder)
          : MaterialPageRoute(builder: widgetBuilder),
    );
  }
}
