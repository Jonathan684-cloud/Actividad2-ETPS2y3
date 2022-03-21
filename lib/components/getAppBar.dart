import 'package:flutter/material.dart';

class getAppBar extends StatefulWidget {
  @override
  State<getAppBar> createState() => _getAppBarState();
}

class _getAppBarState extends State<getAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      elevation: 0,
    );
  }
}
