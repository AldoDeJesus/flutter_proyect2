import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../pages/details.dart';

class ListCharacters extends StatefulWidget {
  const ListCharacters({super.key});

  @override
  State<ListCharacters> createState() => _ListCharactersState();
}

class _ListCharactersState extends State<ListCharacters> {
  double widtScreen = 0.0;
  final titleStyle = const TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    widtScreen = MediaQuery.of(context).size.width - 50.0;

    return Expanded(
      child: ListView(padding: const EdgeInsets.all(25.0), children: [
        Text(
          "Temporadas",
          style: titleStyle,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Row(children: [
          blocks("p1.jpg", "Temporada 1", "40"),
          SizedBox(
            width: widtScreen * 0.03,
          ),
          blocks("p2.jpg", "Temporada 2", "50"),
          SizedBox(
            width: widtScreen * 0.03,
          ),
          blocks("p3.jpg", "Temporada 3", "40"),
        ]),
        const Divider(
          height: 60.0,
          thickness: 1,
          color: Color.fromARGB(255, 25, 4, 139),
        ),
        const SizedBox(
          height: 15.0,
        ),
        blocksCharacters("Charizard", 0xffff8500, "c1.jpg"),
        blocksCharacters("Snorlax", 0xff219bea, "c2.jpg"),
        blocksCharacters("Bulbasaur", 0xff13a013, "c3.png"),
        blocksCharacters("Pikachu", 0xffffd02f, "c4.png"),
        blocksCharacters("Squirtle", 0xff219bea, "c5.png"),
        blocksCharacters("Caterpie", 0xff13a013, "c6.png"),
      ]),
    );
  }

  Widget blocksCharacters(String name, int color, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(builder: (context) => DetailPage(colorP: color,image:"assets/$image",name: name,)));
      },
      child: Container(
        
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color.fromARGB(255, 0, 46, 154),
        ),
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
      
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 50.0,
                          offset: const Offset(0.0, 5.0),
                          spreadRadius: 0,
                          color: Color(color))
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Hero(tag: name,child: Image.asset("assets/$image")),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                )
              ],
            ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded,color: Colors.white,))
          ],
        ),
      ),
    );
  }

  Column blocks(String image, String title, String subtitle) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Image.asset(
            "assets/$image",
            width: widtScreen * 0.31,
            height: 110.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        RichText(
            text: TextSpan(
                text: title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: subtitle,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal))
            ]))
      ],
    );
  }
}
