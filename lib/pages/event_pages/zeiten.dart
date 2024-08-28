import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Zeiten extends StatelessWidget {
  const Zeiten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAKERSPACE",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () => Navigator.pushNamed(context, "/cartpage")),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 108, 27, 64),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Zeiten",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    )),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Nähen:\n  Montag ab 16:00 Uhr \n  Donnerstag ab 10:00 Uhr \n\n3D-Drucker:\n  Montag ab 12:00 Uhr\n  Dienstag ab 18:00 Uhr\n  Freitag ab 11:00 Uhr \n\nTöpfern:\n  Montag ab 9:00 Uhr\n  Mittwoch ab 9:00 Uhr\n  Freitag ab 17:00 Uhr",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Kontakte",
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        )),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(children: [
                          Text(
                              "Email:\n  makerspace@rub.de\nTelefon:\n  0234 32 26088",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ))
                        ]),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
