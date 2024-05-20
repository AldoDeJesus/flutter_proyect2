import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final titleStyle = const TextStyle(
      color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);

  final subTitleStyle = const TextStyle(
      color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold);

  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(25.0),
      height: 170.0,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 187, 18, 18)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pokemon", style: titleStyle),
            Text("Serie", style: subTitleStyle),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black.withOpacity(0.1)),
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 28,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 10.0),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black.withOpacity(0.1)),
              child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                  size: 28,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        )
      ]),
    );
  }
}
