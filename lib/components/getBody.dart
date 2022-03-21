import 'package:flutter/cupertino.dart';
import 'package:youtube/pages/InicioPage.dart';

class getBody extends StatefulWidget {
  @override
  State<getBody> createState() => _getBodyState();
}

class _getBodyState extends State<getBody> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: activeTab,
      children: [
        InicioPage(),
        Center(
          child: Text(
            "Inicio",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(134, 81, 137, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Mensajes",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(134, 81, 137, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Favoritos",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(134, 81, 137, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Perfil",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(134, 81, 137, 1),
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
