import 'package:flutter/material.dart';

goToPage(BuildContext context, {required Widget page}) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
