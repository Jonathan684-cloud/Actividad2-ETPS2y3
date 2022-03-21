import 'package:flutter/material.dart';
import 'package:youtube/components/getBody.dart';
import 'package:youtube/components/getFooter.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26, //fromRGBO(25 ,20 ,20, 1)
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }
}
