import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Categories/widgets/flatButton_item_widget.dart';

class CategoriesInfo extends StatelessWidget {
  const CategoriesInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            pinned: false,
            expandedHeight: size.height / 2.2,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              background: Stack(
                fit: StackFit.expand,
                children: [
                  CachedNetworkImage(
                    imageUrl:  "https://www.takoaway.com/wp-content/uploads/2019/09/La-cerveza-mexicana-conquista-el-mundo.jpg",
                    placeholder: (context, url) => Center(
                        child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xfffDD2762)),
                    )),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 20, 10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Happy Hour',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'RobotoLight',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfffDD2762),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '50% Off',
                              style: TextStyle(
                                  fontFamily: "RobotoLight",
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 2, 15, 5),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2x1 cerveza nacional',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RobotoMedium',
                            color: Colors.black38),
                      ),
                      Text(
                        '¡Visitanos en nuestras dos sucursales!',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RobotoMedium',
                            color: Colors.black38),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
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
                            height: (size.height * 0.2) / 1.5,
                            width: (size.width * 0.3) / 1.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: CachedNetworkImage(
                                imageUrl: "https://dondepaco.com/wp-content/uploads/2020/09/logo_nuevo_bar_de_paco.gif",
                                placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xfffDD2762)),
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
                                '"Maricos Alfreditos"',
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Blv.Coliso',
                                    // style: textStyleCkardSubTitle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Col.Valle Escondido',
                                    // style: textStyleCardSubTitle,
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Horario:',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RobotoMedium',
                            color: Colors.black38),
                      ),
                      Text(
                        'Lunes a Sábados 11:00 am - 8:00 pm ',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RobotoMedium',
                            color: Colors.black38),
                      ),
                      Text(
                        'Domingos 11:00 am - 8:00 pm ',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RobotoMedium',
                            color: Colors.black38),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
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
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
