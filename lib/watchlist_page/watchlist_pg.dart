import 'package:flutter/material.dart';

import '../home_page/home_pg.dart';
import '../search_pg/search_page.dart';

class WatchList extends StatelessWidget {
  const WatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242A32),
      appBar:  AppBar(
        backgroundColor: const Color(0xFF242A32),
        title: const Center(
          child: Text("Detail",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),),
        ),
        actions:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                debugPrint("Tap");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) =>  const WatchList(),
                  ),
                );
                debugPrint("Tapped");
              },
              child: const Icon(Icons.favorite_border, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Stack(
            clipBehavior: Clip.none,
            children: [
              Image(image: AssetImage("assets/images/main.png"),),
              Positioned(
                left: 30,
                top: 150,
                child: Image(image: AssetImage("assets/images/second.png"),),
              ),
              Positioned(
                  left: 180,
                  top: 250,
                  child: Text("Spiderman No Way \nHome",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 17,
                  ),
                  )
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month, size: 13, color: Colors.grey,),
                    Text(" 2021",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontFamily: "Poppins",
                    ) ,
                    ),
                    Text(" | ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                    Icon(Icons.watch_later_outlined, size: 13, color: Colors.grey,),
                    Text(" 148 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: "Poppins",
                      ) ,
                    ),
                    Text(" | ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),),
                    Icon(Icons.local_attraction_outlined, size: 13, color: Colors.grey,),
                    Text(" Action",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: "Poppins",
                      ) ,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("About Movie",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Poppins",
                  ),
                ),
                Text("Reviews",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Poppins",
                  ),
                ),
                Text("Cast",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              "\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nPhasellus vitae bibendum turpis. Integer auctor leo \nin nulla lobortis, ut molestie ante accumsan Vivamus \nfaucibus id nulla viverra semper.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100,  left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    debugPrint("Tap");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => const HomePage(),
                      ),
                    );
                    debugPrint("Tapped");
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.home, color: Colors.grey, size: 25,),
                      Text("Home", style: TextStyle(color: Colors.white, fontFamily: "Poppins"),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("Tap");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => const Search(),
                      ),
                    );
                    debugPrint("Tapped");
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.search, color: Colors.grey, size: 25,),
                      Text("Search", style: TextStyle(color: Colors.white, fontFamily: "Poppins"),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("Tap");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => const WatchList(),
                      ),
                    );
                    debugPrint("Tapped");
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.favorite_border, color: Colors.grey, size: 25,),
                      Text("Watch List", style: TextStyle(color: Colors.white, fontFamily: "Poppins"),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
