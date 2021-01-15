import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Categories/widgets/flatButton_item_widget.dart';
import 'package:flutter_ui/src/Categories/widgets/card_item_offert.dart';
import 'package:flutter_ui/src/Utils/Constant/constant_utils.dart';
import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';

/**
 * 
 * Esta clase es la encargada de generar todo el widget de la Card,
 * es este cree algunas variables, estas debes de cambiarlar según su necesidad 
 * a hora de generar la card
 */

class CardItemWidget extends StatelessWidget {
  const CardItemWidget(
      {Key key,
      this.restaurantName,
      this.adressOne,
      this.adressTwo,
      this.urlPhoto,
      this.location,
      this.horario1,
      this.horario2})
      : super(key: key);
  final String restaurantName;
  final String adressOne;
  final String adressTwo;
  final String urlPhoto;
  final String location;
  final String horario1;
  final String horario2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ConfigurableExpansionTile(
          expandedBackgroundColor: Colors.white,
          header: Container(
            // (size.height * 0.2) / 1.3,
            height: (size.height * 0.2) / 1.3,
            width: size.width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: InkWell(
                          onTap: () => {print('Image')},
                          child: Container(
                            height: (size.height * 0.2) / 1.9,
                            width: (size.width * 0.3) / 1.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: CachedNetworkImage(
                                imageUrl: (urlPhoto != null)
                                    ? urlPhoto
                                    : "http://via.placeholder.com/350x150",
                                placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(colorPink),
                                )),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        shadowColor: Colors.black,
                        elevation: 4,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(
                              title: Text(
                                (restaurantName != null) ? restaurantName : '',
                                style: textStyleCardTitle,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    (adressOne != null) ? adressOne : '',
                                    style: textStyleCardSubTitle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    (adressTwo != null) ? adressTwo : '',
                                    style: textStyleCardSubTitle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                (location != null)
                    ? Positioned(
                        right: 0,
                        bottom: (((size.height * 0.2) / 1.9) / 2),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xfffDD2762),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                location,
                                style: TextStyle(
                                    fontFamily: "RobotoLight",
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          /**
   * 
   * Este Widget genera el Widget del offert, en este Widget se abre al realizar tap en la card,
   * contiene toda la información del desplegable y genera las cards del offer, que debe de redirigir a la pagina de info
   */

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      
                      width: ((size.width * 0.4)/1.2),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Horario:',
                            style: TextStyle(
                                fontFamily: 'RobotoMedium',
                                color: Colors.black38),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            horario1,
                            style: TextStyle(
                                fontFamily: 'RobotoLight',
                                color: Colors.black38,
                                fontSize: 13),
                          ),
                          Text(
                            horario2,
                            style: TextStyle(
                                fontFamily: 'RobotoLight',
                                color: Colors.black38,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButtonCardItemWidget(
                          textBotton: 'Llamar',
                          callbackAction: () => {},
                        ),
                        FlatButtonCardItemWidget(
                          textBotton: 'Como llegar',
                          callbackAction: () => {},
                        ),
                        FlatButtonCardItemWidget(
                          textBotton: 'Pin',
                          callbackAction: () => {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Container(
                        child: Text(
                          'Productos de Oferta',
                          style: TextStyle(
                              fontFamily: 'RobotoMedium', fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            /* Widget de Oferrta */
            InkWell(
              child: CardOffertWidget(
                offertName: 'Happy Hour',
                description: 'descrip',
                offer: '50% Off',
                urlPhoto:
                    'https://www.takoaway.com/wp-content/uploads/2019/09/La-cerveza-mexicana-conquista-el-mundo.jpg',
              ),
              onTap: () => Navigator.pushNamed(context, '/CategoriesInfo'),
            ),
          ]),
    );
  }
}
