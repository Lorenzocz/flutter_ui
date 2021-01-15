import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Categories/widgets/card_item_widget.dart';
import 'package:flutter_ui/src/Categories/widgets/search_item_widget.dart';
import 'package:flutter_ui/src/Utils/Constant/constant_utils.dart';

class CategoriesHome extends StatelessWidget {
  const CategoriesHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 50,
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              elevation: 0.0,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 15),
                      child: Icon(
                        Icons.restaurant,
                        color: Color(0xfffA01846),
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Restaurantes',
                      style: textStyleTitle,
                    ),
                  ],
                ),
              ),
              centerTitle: true,
            ),

            /*Item del Search
              este widget llama el buscador
            */
            SearchItemWidget(),
          /*
              Este Widget crea la lista de Restaurantes,
              La idea es que pase su array de restaurantes y la genere desde aquí,

            */
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return CardItemWidget(
                    restaurantName: 'Marisqueria Don Paco',
                    adressOne: 'valle dos',
                    adressTwo: 'valle 3',
                    urlPhoto: 'https://dondepaco.com/wp-content/uploads/2020/09/logo_nuevo_bar_de_paco.gif',
                    horario1: 'lunes',
                    horario2: 'lunes ',
                  );
                },
                childCount: 10,
              ),
            ),
            
          ],
        ));
  }
}
