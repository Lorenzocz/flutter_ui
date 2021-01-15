import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Utils/Constant/constant_utils.dart';

class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
              pinned: true,
              elevation: 0.0,
              backgroundColor: Color(0xfffF2F3F5),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 15),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 18,bottom: 10),
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
            );
  }
}