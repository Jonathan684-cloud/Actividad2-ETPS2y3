import 'package:flutter/material.dart';
import 'package:youtube/components/getAppBar.dart';
import 'package:youtube/helpers/data.dart';
import 'package:youtube/pages/descripcion.dart';

class InicioPage extends StatefulWidget {
  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int activeMenu1 = 0;
  dynamic categoria = cat_Aereos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Musica",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(134, 81, 137, 1),
                    fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.blogs.es/anexom/wp-content/uploads/2021/12/perfil-1024x754.jpg"),
                radius: 20,
              )
            ],
          ),
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              activeMenu1 = index;
                              if (index == 0) {
                                categoria = cat_Aereos;
                              } else if (index == 1) {
                                categoria = cat_Acuaticos;
                              } else if (index == 2) {
                                categoria = cat_Terrestres;
                              } else if (index == 3) {
                                categoria = cat_Nocturnos;
                              } else if (index == 4) {
                                categoria = cat_Domesticos;
                              } else {
                                categoria = categorias_animales;
                              }
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: activeMenu1 == index
                                        ? const Color.fromRGBO(134, 81, 137, 1)
                                        : const Color.fromRGBO(
                                            255, 255, 255, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Text.rich(TextSpan(
                                  text: song_type_1[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: activeMenu1 == index
                                          ? const Color.fromRGBO(
                                              255, 255, 255, 1)
                                          : const Color.fromRGBO(
                                              134, 81, 137, 1),
                                      backgroundColor: activeMenu1 == index
                                          ? const Color.fromRGBO(
                                              134, 81, 137, 1)
                                          : const Color.fromRGBO(
                                              255, 255, 255, 1),
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: List.generate(categoria.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 15, top: 15, bottom: 10, left: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Descripcion()));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 300,
                                  height: 170,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              categoria[index]['img']),
                                          fit: BoxFit.fill),
                                      color: Color.fromRGBO(134, 81, 137, 1),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(134, 81, 137, 1),
                                            blurRadius: 10)
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text.rich(TextSpan(
                    text: "Lo mas visitado de la semana",
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromRGBO(134, 81, 137, 0.8),
                        fontWeight: FontWeight.w900))),
              ),
              //comentario de prueba

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children:
                        List.generate(categorias_animales.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 15, top: 15, bottom: 10, left: 10),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            categorias_animales[index]['img'])),
                                    color: Color.fromRGBO(134, 81, 137, 1),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(134, 81, 137, 1),
                                          blurRadius: 10)
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(categorias_animales[index]['title'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                width: 100,
                                child: Text(
                                    categorias_animales[index]['description'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Center(
                  child: Container(
                width: 300,
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topLeft,
                child: Text.rich(TextSpan(
                    text: "Nuevos Albunes",
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromRGBO(134, 81, 137, 0.8),
                        fontWeight: FontWeight.w900))),
              )),
              Center(
                ///Albunes inferiores
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: List.generate(song_type_1.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 15, top: 15, bottom: 10, left: 10),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  height: 170,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              categorias_animales[index]
                                                  ['img'])),
                                      color: Color.fromRGBO(134, 81, 137, 1),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(134, 81, 137, 1),
                                            blurRadius: 10)
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Container(
                                    /* width: 100,
                                    height: 10,
                                    color: Colors.black, */
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: activeMenu1 == index
                                                  ? const Color.fromRGBO(
                                                      134, 81, 137, 1)
                                                  : const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10))),
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Text.rich(TextSpan(
                                            text: song_type_1[index],
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: activeMenu1 == index
                                                    ? const Color.fromRGBO(
                                                        255, 255, 255, 1)
                                                    : const Color.fromRGBO(
                                                        134, 81, 137, 1),
                                                backgroundColor:
                                                    activeMenu1 == index
                                                        ? const Color.fromRGBO(
                                                            134, 81, 137, 1)
                                                        : const Color.fromRGBO(
                                                            255, 255, 255, 1),
                                                fontWeight: FontWeight.bold),
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
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
                                        "Titulo",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(134, 81, 137, 0.8),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Subtitulo",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color:
                                              Color.fromRGBO(134, 81, 137, 0.8),
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
              ),
              /*  Container(
                height: 20,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(134, 81, 137, 1),
                ),
              ) */
            ],
          )
        ],
      ),
    );
  }
}
