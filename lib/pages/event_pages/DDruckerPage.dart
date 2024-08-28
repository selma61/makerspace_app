import 'package:flutter/material.dart';
import 'package:makerspace/components/button.dart';
import 'package:makerspace/pages/models/cart_model.dart';
import 'package:provider/provider.dart';

class DDruckerPage extends StatelessWidget {
  const DDruckerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 108, 27, 64),
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
                  onPressed: () => Navigator.pushNamed(context, "/cartpage"),
                ))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("lib/images/work_3D.png", height: 220)),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Color.fromARGB(255, 224, 198, 6),
                  ),
                  Text(
                    "5,0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "3D-Drucker",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Das erwatet Sie",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Der 3D-Drucker-Workshop bietet eine Einführung in die Welt des 3D-Drucks. Teilnehmer lernen die Grundlagen des 3D-Designs, den Umgang mit 3D-Druckern und die Nachbearbeitung von Drucken. Der Workshop ist ideal für Anfänger und vermittelt praxisnahes Wissen, um eigene Projekte zu realisieren.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Color.fromARGB(255, 61, 91, 212),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "€22,00",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: IconButton(
                                  onPressed: cartModel.removedrucker,
                                  icon: Icon(Icons.remove)),
                            ),
                            SizedBox(width: 8),
                            Text(
                              cartModel.drucker.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 8),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: IconButton(
                                  onPressed: cartModel.adddrucker,
                                  icon: Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    MyButton(
                      mytext: "Zum Einkaufswagen",
                      event: () => Navigator.pushNamed(context, "/cartpage"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
