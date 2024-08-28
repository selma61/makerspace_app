import 'package:flutter/material.dart';
import 'package:makerspace/components/button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 108, 27, 64),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/images/logo_schlicht.png",
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("MAKER",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Text(
                  "SPACE",
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: Image.asset(
                "lib/images/tikerbell.png",
                height: 350,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Text(
                  "GET CREATIVE!",
                  style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Erlebe deine Kreativität:",
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Das Makerspace der RUB ist eine offene Werkstatt mit modernen Werkzeugen wie 3D-Druckern, Nähmaschienen und vielem mehr.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MyButton(
                mytext: "Legen wir los",
                event: () => Navigator.pushNamed(context, "/menupage"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
