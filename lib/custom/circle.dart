import 'package:flutter/material.dart';

class DisplayCircle extends StatelessWidget {
  const DisplayCircle({super.key});
  List<Map<String, dynamic>> imageText = [
    {
      "text":"Women",
      "image":"assets/images/",
    },
    {
      "text":"Men",
      "image":"assets/images/",
    },
    {
      "text":"Kids",
      "image":"assets/images/",
    },
    {
      "text":"Teen",
      "image":"assets/images/",
    },
    {
      "text":"Baby",
      "image":"assets/images/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          width: 500,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      child: Image.asset("assets/logos/tesla.png"),
                    ),
                  ),
                  const Text(""),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
