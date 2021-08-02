import 'package:flutter/material.dart';

class TopMenu extends StatefulWidget {
  @override
  _TopMenuState createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          TopmenuTiles(name: "Carnes", imageUrl: "beef", slug: ""),
          TopmenuTiles(
              name: "Lacteos", imageUrl: "productos-lacteos", slug: ""),
          TopmenuTiles(name: "Pastas", imageUrl: "pasta", slug: ""),
          TopmenuTiles(name: "Bebe", imageUrl: "comida-para-bebe", slug: ""),
          TopmenuTiles(name: "Embutidos", imageUrl: "embutido", slug: ""),
          TopmenuTiles(name: "Limpieza", imageUrl: "jabon-liquido", slug: ""),
          TopmenuTiles(name: "Desechables", imageUrl: "plastico", slug: ""),
          TopmenuTiles(name: "Bebidas", imageUrl: "espiritu", slug: ""),
        ],
      ),
    );
  }
}

class TopmenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  TopmenuTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 30.0,
                offset: Offset(0.0, 0.75),
              )
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Image.asset(
                    'assets/pages/login/' + imageUrl + ".png",
                    width: 30,
                    height: 30,
                  )),
                )),
          ),
          Text(name,
              style: TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
