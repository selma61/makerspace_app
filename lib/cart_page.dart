import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makerspace/pages/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartmodel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 108, 27, 64),
        appBar: AppBar(
          title: Text(
            "Warenkorb",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  if (cartmodel.drucker > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 52, 108),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "3D-Drucker",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        subtitle: Text(
                          "€22,00",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartmodel.drucker.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                                onPressed: cartmodel.cleardrucker,
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 15),
                  if (cartmodel.topf > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 52, 108),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Töpfern",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        subtitle: Text(
                          "€35,00",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartmodel.topf.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                                onPressed: cartmodel.cleartopf,
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 15),
                  if (cartmodel.nah > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 52, 108),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Nähmaschiene",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        subtitle: Text(
                          "€5,00",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartmodel.nah.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                                onPressed: cartmodel.clearnah,
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 52, 108),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        "Gesamtpreis",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      subtitle: Text(
                        "€" + cartmodel.totalItemsPrice.toString() + ",00",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            cartmodel.totalItems.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
