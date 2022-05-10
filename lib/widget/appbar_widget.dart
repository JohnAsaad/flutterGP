import 'package:flutter/material.dart';
import 'package:flutter_gp/profile_page_screen.dart';

AppBar buildAppBar(BuildContext context) {

  return AppBar(
    leading: BackButton(),
    elevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black54,

  );
}