import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Bussiness_logic/models/restaurant_model.dart';
import 'package:flutter_ui/src/Categories/widgets/card_item_widget.dart';
import 'package:flutter_ui/src/Utils/Constant/constant_utils.dart';

const lista = [
  Categoria(
    name: 'restaurantes',
    cards: [
      Cards(nombre: 'Restaurante 1'),
      Cards(nombre: 'Restaurante 2'),
      Cards(nombre: 'Restaurante 3'),
    ]
    ),
    Categoria(
    name: 'Comercios',
    cards: [
      Cards(nombre: 'Comercios 1'),
      Cards(nombre: 'Comercios 2'),
      Cards(nombre: 'Comercios 3'),
    ]
    ),
    Categoria(
    name: 'Hospitales',
    cards: [
      Cards(nombre: 'Hospitales 1'),
      Cards(nombre: 'Hospitales 2'),
      Cards(nombre: 'Hospitales 3'),
    ]
    )
];

/*
 * Esta clase es la que lleva más trabajo, por que debes de jugar con tu json,
 * poder clasificar las categorias y productos.
 * 
 * en esta clase realice un ejemplo en duro, de como pudes jugar con esos datos y como clasificar las
 * categorias, entoces, esta clase retorna un List.view y en base al json
 * retorna la categoria y sus items.
 * 
 * debes de recorrer tu json y separar las categorias en una nuevo listado,
 * te dejo un ejemplo de como se realiza, para que luego lo hagas en tus controles,}
 * recuerda que las variables debes de cambiarlar a tu forma en la que estas programando
 * 
 * 
 */

class LocationPage extends StatefulWidget {
  const LocationPage({Key key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final List<Items> cards = [];

  void recorrer() {
    for (int i = 0; i < lista.length; i++) {
      final categories = lista[i];
      cards.add(Items(categoria: categories));
      for (var j = 0; j < categories.cards.length; j++) {
        final card = categories.cards[j];
        cards.add(Items(cards: card));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    recorrer();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffF2F3F5),
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 15),
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 18, bottom: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(
                      cursorColor: colorPink,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: 'Buscar',
                          hintStyle: textStyleTitleSearch,
                          enabledBorder: new UnderlineInputBorder(
                            borderSide:
                                new BorderSide(color: Color(0xfffF2F3F5)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorPink),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                child: Text(
                  'Negocios Cercanos',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoMedium',
                      fontSize: 25,
                      letterSpacing: 1),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cards.length,
                itemBuilder: (_, index) {
                  final items = cards[index];
                  if (items.isCategory) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                      child: Text(
                        items.categoria.name,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'RobotoLight',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      ),
                    );
                  } else {
                    return Center(
                      child: CardItemWidget(
                        restaurantName: items.cards.nombre,
                        adressOne: 'valle dos',
                        adressTwo: 'valle 3',
                        location: '5.5 km',
                        horario1: 'lunes ',
                        horario2: 'lunes ',
                        urlPhoto:
                            'https://dondepaco.com/wp-content/uploads/2020/09/logo_nuevo_bar_de_paco.gif',
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ));
  }
}
