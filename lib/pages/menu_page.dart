import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makerspace/components/button.dart';
import 'package:makerspace/components/event_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    List EventList = [
      EventTile(
        name: "Nähmaschine",
        price: "5€",
        imagePath: "lib/images/Näh.png",
        rating: "3,5",
        details: () => Navigator.pushNamed(context, "/festivalpage"),
      ),
      EventTile(
        name: "3D-Druker",
        price: "22€",
        imagePath: "lib/images/3D-Drucker.png",
        rating: "5",
        details: () => Navigator.pushNamed(context, "/noodleharmonypage"),
      ),
      EventTile(
        name: "Töpfern",
        price: "35€",
        imagePath: "lib/images/töpfern.png",
        rating: "4,3",
        details: () => Navigator.pushNamed(context, "/topfpage"),
      ),
    ];

    return Scaffold(
      backgroundColor:
          isDarkMode ? Colors.black : Color.fromARGB(255, 108, 27, 64),
      appBar: AppBar(
        title: Text(
          "MAKERSPACE",
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            icon: isDarkMode
                ? Icon(Icons.light_mode, color: Colors.white)
                : Icon(Icons.dark_mode, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, "/cartpage"),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: const Color(0xffffb46c),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Anreise",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    MyButton(
                      mytext: "Google Maps",
                      event: () {},
                    )
                  ],
                ),
                SizedBox(width: 5),
                Image.asset(
                  "lib/images/anreise.png",
                  height: 60,
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: MyButton(
              mytext: "Zeiten",
              event: () => Navigator.pushNamed(context, "/zeiten"),
            ),
          ),
          SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Workshops",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => EventList[index],
              itemCount: EventList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Versorgung",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 94, 185, 160),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "lib/images/kaffee.png",
                  height: 115,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kaffee",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Preis: €1",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
