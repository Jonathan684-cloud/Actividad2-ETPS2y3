import 'package:flutter/material.dart';

const List song_type_1 = [
  "Aereos",
  "Acuaticos",
  "Terrestres",
  "Nocturnos",
  "Domesticos",
  "Lo ultimo"
];
const List descripcion = [
  "Música",
  "Discos",
  "Seguidos",
  "Lista",
  "Géneros",
  "Lo ultimo"
];
const List top = [
  {"img": "assets/images/colibrie.jpg", "title": "Colibrie"},
  {"img": "assets/images/tortuga.jpg", "title": "Tortuga"},
  {"img": "assets/images/elefante.jpg", "title": "Elefante"},
  {"img": "assets/images/murcielago.jpg", "title": "Murcielago"},
  {"img": "assets/images/perro.jpg", "title": "Perro"},
];
const List cat_Aereos = [
  {
    "img": "assets/images/aguila.jpg",
    "title": "Aguila",
    "description": "Vive en lo mas alto!",
    "categoria:": "aereo",
    "habitat": [
      {"title": "Europa", "Lugar": "Montañas"},
      {"title": "Asia", "Lugar": "Montañas"},
      {"title": "Africa", "Lugar": "Montañas"}
    ]
  },
  {
    "img": "assets/images/colibrie.jpg",
    "title": "Colibrie",
    "description": "Vive en Jardines!",
    "categoria:": "aereo",
    "habitat": [
      {"title": "Europa", "Lugar": "Jardines"},
      {"title": "Asia", "Lugar": "Bosques"},
      {"title": "Africa", "Lugar": "Arboles"}
    ]
  },
  {
    "img": "assets/images/tucan.jpg",
    "title": "Tucan",
    "description": "Vive en Bosques!",
    "categoria:": "aereo",
    "habitat": [
      {"title": "Europa", "Lugar": "Selva"},
      {"title": "Asia", "Lugar": "Bosques"},
      {"title": "Africa", "Lugar": "Arboles"}
    ]
  }
];
/////acuaticos
const List cat_Acuaticos = [
  {
    "img": "assets/images/concha.jpg",
    "title": "Concha",
    "description": "Fondo del Mar!",
    "categoria:": "marino",
    "habitat": [
      {"title": "Atlantico", "Lugar": "Mar"},
      {"title": "Pacifico", "Lugar": "Mar"}
    ]
  },
  {
    "img": "assets/images/elef-marino.jpg",
    "title": "Elefante Marino",
    "description": "vive cerca del Artico!",
    "categoria:": "marino",
    "habitat": [
      {"title": "Atlantico", "Lugar": "Mar"},
      {"title": "Pacifico", "Lugar": "Mar"}
    ]
  },
  {
    "img": "assets/images/tortuga.jpg",
    "title": "Tortuga",
    "description": "Fondo del Mar!",
    "categoria:": "marino",
    "habitat": [
      {"title": "Atlantico", "Lugar": "Mar"},
      {"title": "Pacifico", "Lugar": "Mar"}
    ]
  }
];

///terrestres
const List cat_Terrestres = [
  {
    "img": "assets/images/leon.jpg",
    "title": "Leon",
    "description": "Rey de la Savana!",
    "categoria:": "terrestre",
    "habitat": [
      {"title": "Savana", "Lugar": "Africa"},
      {"title": "Salvaje", "Lugar": "Feroz"}
    ]
  },
  {
    "img": "assets/images/gorilla.jpg",
    "title": "Gorila",
    "description": "Rey de la Selva!",
    "categoria:": "terrestre",
    "habitat": [
      {"title": "Bosquez", "Lugar": "Africa"},
      {"title": "Tropicales", "Lugar": "Feroz"}
    ]
  },
  {
    "img": "assets/images/elefante.jpg",
    "title": "Elefante",
    "description": "El mas fuerte!",
    "categoria:": "terrestre",
    "habitat": [
      {"title": "Savana", "Lugar": "Africa"},
      {"title": "Salvaje", "Lugar": "Grande"}
    ]
  }
];
/* cat_Nocturnos*/
const List cat_Nocturnos = [
  {
    "img": "assets/images/mapache.jpg",
    "title": "Mapache",
    "description": "Animal con antifas!",
    "categoria:": "nocturno",
    "habitat": [
      {"title": "Ciudades", "Lugar": "Basureros"},
      {"title": "Salvaje", "Lugar": "Ladron"}
    ]
  },
  {
    "img": "assets/images/murcielago.jpg",
    "title": "Murcielago",
    "description": "Animal con antifas!",
    "categoria:": "nocturno",
    "habitat": [
      {"title": "Arboles", "Lugar": "Cuevas"},
      {"title": "oscuro", "Lugar": "Batman"}
    ]
  },
  {
    "img": "assets/images/zorro-comun.jpg",
    "title": "Zorro comun",
    "description": "Agresivo!",
    "categoria:": "nocturno",
    "habitat": [
      {"title": "Carnivoros", "Lugar": "Ciudades"},
      {"title": "Salvajes", "Lugar": "ZAvana"}
    ]
  }
];
//cat_Domesticos
const List cat_Domesticos = [
  {
    "img": "assets/images/perro.jpg",
    "title": "Perro",
    "description": "El mejor amigo del hombre!",
    "categoria:": "domestico",
    "habitat": [
      {"title": "Con dueño", "Lugar": "Casas"},
      {"title": "Callejero", "Lugar": "Parques"}
    ]
  },
  {
    "img": "assets/images/gato.jpg",
    "title": "Gatp",
    "description": "El enemigo del perro!",
    "categoria:": "domestico",
    "habitat": [
      {"title": "dueño karen", "Lugar": "Casas"},
      {"title": "Callejero", "Lugar": "Parques"}
    ]
  },
  {
    "img": "assets/images/hamster.jpg",
    "title": "Hamster",
    "description": "Roedor !",
    "categoria:": "domestico",
    "habitat": [
      {"title": "Entrenado", "Lugar": "Enjaulado"},
      {"title": "Pequeños", "Lugar": "ZZZZ"}
    ]
  }
];

//todas las categorias

const List categorias_animales = [
  {
    "img": "assets/images/elefante.jpg",
    "title": "Elefante",
    "description": "El mas fuerte!",
    "categoria:": "terrestre",
    "habitat": [
      {"title": "Savana", "Lugar": "Africa"},
      {"title": "Salvaje", "Lugar": "Grande"}
    ]
  },
  {
    "img": "assets/images/tucan.jpg",
    "title": "Tucan",
    "description": "Vive en Bosques!",
    "categoria:": "aereo",
    "habitat": [
      {"title": "Europa", "Lugar": "Selva"},
      {"title": "Asia", "Lugar": "Bosques"},
      {"title": "Africa", "Lugar": "Arboles"}
    ]
  }, //cambio de  categoria - marina
  {
    "img": "assets/images/concha.jpg",
    "title": "Concha",
    "description": "Fondo del Mar!",
    "categoria:": "marino",
    "habitat": [
      {"title": "Atlantico", "Lugar": "Mar"},
      {"title": "Pacifico", "Lugar": "Mar"}
    ]
  },
  {
    "img": "assets/images/elef-marino.jpg",
    "title": "Elefante Marino",
    "description": "vive cerca del Artico!",
    "categoria:": "marino",
    "habitat": [
      {"title": "Atlantico", "Lugar": "Mar"},
      {"title": "Pacifico", "Lugar": "Mar"}
    ]
  },
  {
    "img": "assets/images/tortuga.jpg",
    "title": "Concha",
    "description": "Fondo del Mar!",
    "categoria:": "marino",
    "habitat": [
      {"title": "Atlantico", "Lugar": "Mar"},
      {"title": "Pacifico", "Lugar": "Mar"}
    ]
  },
  {
    "img": "assets/images/aguila.jpg",
    "title": "Aguila",
    "description": "Vive en lo mas alto!",
    "categoria:": "aereo",
    "habitat": [
      {"title": "Europa", "Lugar": "Montañas"},
      {"title": "Asia", "Lugar": "Montañas"},
      {"title": "Africa", "Lugar": "Montañas"}
    ]
  },
  {
    "img": "assets/images/colibrie.jpg",
    "title": "Colibrie",
    "description": "Vive en Jardines!",
    "categoria:": "aereo",
    "habitat": [
      {"title": "Europa", "Lugar": "Jardines"},
      {"title": "Asia", "Lugar": "Bosques"},
      {"title": "Africa", "Lugar": "Arboles"}
    ]
  },
  //categoria terrestres
  {
    "img": "assets/images/leon.jpg",
    "title": "Leon",
    "description": "Rey de la Savana!",
    "categoria:": "terrestre",
    "habitat": [
      {"title": "Savana", "Lugar": "Africa"},
      {"title": "Salvaje", "Lugar": "Feroz"}
    ]
  },
  {
    "img": "assets/images/gorilla.jpg",
    "title": "Gorila",
    "description": "Rey de la Selva!",
    "categoria:": "terrestre",
    "habitat": [
      {"title": "Bosquez", "Lugar": "Africa"},
      {"title": "Tropicales", "Lugar": "Feroz"}
    ]
  },

  //Nocturno
  {
    "img": "assets/images/mapache.jpg",
    "title": "Mapache",
    "description": "Animal con antifas!",
    "categoria:": "nocturno",
    "habitat": [
      {"title": "Ciudades", "Lugar": "Basureros"},
      {"title": "Salvaje", "Lugar": "Ladron"}
    ]
  },
  {
    "img": "assets/images/murcielago.jpg",
    "title": "Mapache",
    "description": "Animal con antifas!",
    "categoria:": "nocturno",
    "habitat": [
      {"title": "Arboles", "Lugar": "Cuevas"},
      {"title": "oscuro", "Lugar": "Batman"}
    ]
  },
  {
    "img": "assets/images/zorro-comun.jpg",
    "title": "Zorro comun",
    "description": "Agresivo!",
    "categoria:": "nocturno",
    "habitat": [
      {"title": "Carnivoros", "Lugar": "Ciudades"},
      {"title": "Salvajes", "Lugar": "ZAvana"}
    ]
  },
  //domesticos
  {
    "img": "assets/images/perro.jpg",
    "title": "Perro",
    "description": "El mejor amigo del hombre!",
    "categoria:": "domestico",
    "habitat": [
      {"title": "Con dueño", "Lugar": "Casas"},
      {"title": "Callejero", "Lugar": "Parques"}
    ]
  },
  {
    "img": "assets/images/gato.jpg",
    "title": "Gatp",
    "description": "El enemigo del perro!",
    "categoria:": "domestico",
    "habitat": [
      {"title": "dueño karen", "Lugar": "Casas"},
      {"title": "Callejero", "Lugar": "Parques"}
    ]
  },
  {
    "img": "assets/images/hamster.jpg",
    "title": "Hamster",
    "description": "Roedor !",
    "categoria:": "domestico",
    "habitat": [
      {"title": "Entrenado", "Lugar": "Enjaulado"},
      {"title": "Pequeños", "Lugar": "ZZZZ"}
    ]
  },
];
