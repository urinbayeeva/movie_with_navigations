import 'package:flutter/material.dart';
import 'package:movie_app/watchlist_page/watchlist_pg.dart';

import '../home_page/home_pg.dart';
import '../home_page/main.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF242A32),
      appBar:  AppBar(
        backgroundColor: const Color(0xFF242A32),
        title: const Center(
          child: Text("Search",
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
                    builder:(context) =>  const Search(),
                  ),
                );
                debugPrint("Tapped");
              },
                child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
        const SizedBox(
        width: 30,
        height: 30,
      ),
      Container(
        width: 350,
        height: 42,
        decoration: ShapeDecoration(
          color: const Color(0xFF3A3F47),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 284.52,
              child: Text(
                'Search',
                style: TextStyle(
                  color: Color(0xFF67676D),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Icon(Icons.search,
              color: Color(0xFF67676D),
            ),
          ],
        ),
      ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Image(image: AssetImage("assets/images/spiderman.png"),),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Spiderman",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 15,
                    ),),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Icon(Icons.star_border, color: Colors.yellow, size: 15,),
                     Text(" 9.5",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 15,
                         fontFamily: "Poppins",
                       ),
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Icon(Icons.call_to_action_outlined, color: Colors.green, size: 15,),
                     Text(" Action", style: TextStyle(
                       color: Colors.white,
                       fontSize: 15,
                       fontFamily: "Poppins",),),
                   ],
                 ),
                 Row(
                   children: [
                     Icon(Icons.calendar_month, color: Colors.grey, size: 15,),
                     Text(" 2019",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 15,
                         fontFamily: "Poppins",
                       ),
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Icon(Icons.watch_later_outlined, color: Colors.grey, size: 15,),
                     Text(" 139 minutes",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 15,
                         fontFamily: "Poppins",
                       ),
                     ),
                   ],
                 )
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Image(image: AssetImage("assets/images/spider_2.png"),),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Spider-Man: No Way H...",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 15,
                    ),),
                  Row(
                    children: [
                      Icon(Icons.star_border, color: Colors.yellow, size: 15,),
                      Text(" 8.5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.call_to_action_outlined, color: Colors.green, size: 15,),
                      Text(" Action", style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins",),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: Colors.grey, size: 15,),
                      Text(" 2021",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.watch_later_outlined, color: Colors.grey, size: 15,),
                      Text(" 139 minutes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 20, right: 20),
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
