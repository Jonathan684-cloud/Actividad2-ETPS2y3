import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube/components/getAppBar.dart';
import 'package:youtube/components/getFooter.dart';
import 'package:youtube/helpers/data.dart';
import 'package:youtube/pages/descripcion.dart';

class Descripcion extends StatefulWidget {
  @override
  State<Descripcion> createState() => _DescripcionState();
}

class _DescripcionState extends State<Descripcion> {
  double _currentSliderValue = 40;
  @override
  int activeMenu1 = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 400,
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(top: 100),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: 300,
                              height: 170,
                              margin: EdgeInsets.only(top: 20),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          "https://th.bing.com/th/id/R.ee6cced027345bb48260789fd08d8894?rik=6%2fCJFzpBkjYKvw&pid=ImgRaw&r=0")),
                                  color: Color.fromRGBO(134, 81, 137, 1),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(134, 81, 137, 1),
                                        blurRadius: 10)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            height: 100,
                            child: Column(
                              children: [
                                Container(
                                  child: Slider(
                                      activeColor: Colors.green,
                                      value: _currentSliderValue,
                                      min: 0,
                                      max: 200,
                                      onChanged: (value) {
                                        setState(() {
                                          _currentSliderValue = value;
                                        });
                                      }),
                                ),
                                Container(
                                  width: 300,
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Text.rich(TextSpan(
                                          text: "Navegando sobre el Mar",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w900))),
                                      Text.rich(TextSpan(
                                          text: "Aves de plata",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w900)))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 300,
                              padding: const EdgeInsets.only(top: 20),
                              child: Text.rich(TextSpan(
                                  text: "Busquedas similares",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: const Color.fromRGBO(
                                          134, 81, 137, 0.8),
                                      fontWeight: FontWeight.w900))),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: List.generate(
                                    categorias_animales.length, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15,
                                        top: 15,
                                        bottom: 10,
                                        left: 10),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          //comentario
                                          Container(
                                            width: 100,
                                            height: 80,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        categorias_animales[
                                                            index]['img'])),
                                                color: Color.fromRGBO(
                                                    134, 81, 137, 1),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          134, 81, 137, 1),
                                                      blurRadius: 10)
                                                ],
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          ),
                                          Container(
                                            width: 100,
                                            //decoration: BoxDecoration(color: Colors.amber),
                                            margin: EdgeInsets.only(top: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  categorias_animales[index]
                                                      ['title'],
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromRGBO(
                                                        134, 81, 137, 0.8),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  categorias_animales[index]
                                                      ['description'],
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        134, 81, 137, 0.8),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text.rich(TextSpan(
                    text: "Nuevos Albunes",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w900))),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
