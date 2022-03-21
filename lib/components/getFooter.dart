import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class getFooter extends StatefulWidget {
  @override
  State<getFooter> createState() => _getFooterState();
}

class _getFooterState extends State<getFooter> {
  int activeTab = 0;
  List items = [
    Icons.home,
    Icons.message_outlined,
    Icons.favorite_rounded,
    Icons.person_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration:
          BoxDecoration(color: Colors.white), // Color.fromRGBO(25, 20, 20, 1)
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              icon: Icon(
                items[index],
                color: activeTab == index
                    ? Color.fromRGBO(134, 81, 137, 1)
                    : Color.fromRGBO(192, 150, 195, 0.8),
              ),
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
