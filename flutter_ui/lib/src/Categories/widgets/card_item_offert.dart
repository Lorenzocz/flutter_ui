import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Utils/Constant/constant_utils.dart';

class CardOffertWidget extends StatelessWidget {
  const CardOffertWidget(
      {Key key, this.urlPhoto, this.offertName, this.description, this.offer})
      : super(key: key);
  final String offertName;
  final String description;
  final String urlPhoto;
  final String offer;

  @override
  Widget build(BuildContext context) {
    final itemCount = 2;
    final size = MediaQuery.of(context).size;
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          print(index);
          print(itemCount);
          return Center(
              child: Column(
            children: [
              Container(
                // (size.height * 0.2) / 1.3,
                height: (size.height * 0.2) / 1.5,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: (itemCount - 1 == index)
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))
                      : BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                  color: Colors.white,
                ),
                child: Stack(
                  key: UniqueKey(),
                  children: [
                    (offer != null)
                        ? Positioned(
                            right: 0,
                            bottom: ((size.height * 0.2) / 1.5) / 2.5,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xfffDD2762),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    offer,
                                    style: TextStyle(
                                        fontFamily: "RobotoLight",
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  height: (size.height * 0.2) / 2.3,
                                  width: (size.width * 0.3) / 1.9,
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
                                            AlwaysStoppedAnimation<Color>(
                                                colorPink),
                                      )),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                      fit: BoxFit.cover,
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
                                        (offertName != null) ? offertName : '',
                                        style: textStyleCardTitle,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      subtitle: Text(
                                        (description != null)
                                            ? description
                                            : '',
                                        style: textStyleCardSubTitle,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider()
            ],
          ));
        });
  }
}
