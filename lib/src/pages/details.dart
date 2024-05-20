import 'package:flutter/material.dart';
import 'package:proyect_02/src/animations/animations.dart';
import 'package:proyect_02/src/widgets/blur.dart';
import 'package:proyect_02/src/widgets/infoTitle.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {super.key,
      required this.colorP,
      required this.image,
      required this.name});
  final int colorP;
  final String image;
  final String name;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double heightScreen = 0.0;

  @override
  Widget build(BuildContext context) {
    heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(widget.colorP), const Color.fromARGB(255, 33, 26, 26)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(  // Added SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: SizedBox(
                    height: heightScreen * 0.6,
                    child: Hero(tag: widget.name,child: Image.asset(widget.image),),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 10.0,
                  child: FadeAnimation(
                    intervalEnd: 0.8,
                    child: BlurContainer(
                      child: Container(
                        width: 160.0,
                        height: 50.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FadeAnimation(
                  intervalStart: 0.3,
                  child: Text("${widget.name}: Information",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: FadeAnimation(
                  intervalStart: 0.35,
                  child: Text("Pokemon",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: FadeAnimation(
                  intervalStart: 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Infotitle(title: "Satoshi Tajiri", subtitle: "Creador"),
                      Infotitle(title: "Japon", subtitle: "Pais"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              FadeAnimation(
                intervalStart: 0.5,
                child: GestureDetector(
                  onTap: () {Navigator.pop(context);},
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(widget.colorP),
                    ),
                    child: const Text("Volver",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0, // Added space at the bottom
              ),
            ],
          ),
        ),
      ),
    );
  }
}
