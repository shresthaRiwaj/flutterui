import 'package:flutter/material.dart';
import 'package:flutterui/custom/circle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Image.asset("assets/logos/tesla.png"),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Badge(
              label: Text("3"),
              child: Icon(Icons.shop),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xffc2d1db),
                image: DecorationImage(
                  image: AssetImage("assets/images/20%off.jpg"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shop By Category"),
                      Text("See All"),
                    ],
                  ),
                ),
                DisplayCircle(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
