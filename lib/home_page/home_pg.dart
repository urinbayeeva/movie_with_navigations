import 'package:flutter/material.dart';
import 'package:movie_app/home_page/main.dart';
import 'package:movie_app/search_pg/search_page.dart';

import '../watchlist_page/watchlist_pg.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242A32),
      appBar: AppBar(
        backgroundColor: const Color(0xFF242A32),
        title: const Text("What do you want to watch?",
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: 20,
            height: 10,
          ),
          Center(
            child: Container(
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
          ),
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
          width: 144.61,
          height: 210,
          decoration: ShapeDecoration(
          image: const DecorationImage(
          image: AssetImage(
            "assets/images/first.png"
          ),
          fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          ),
          ),
          ),
          Container(
            width: 144.61,
            height: 210,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(
                    "assets/images/second.png"
                ),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    ),
         const Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text("Jurassic World",style: TextStyle(
               fontSize: 15,
               color: Colors.white,
               fontWeight: FontWeight.w200,
               fontFamily: "Poppins",
             ),
             ),
             Text("Spider-Man: No way \nHome",style: TextStyle(
               fontSize: 15,
               color: Colors.white,
               fontWeight: FontWeight.w200,
               fontFamily: "Poppins",
             ),
             ),
           ],
         ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Now Playing",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text("Upcoming",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text("Top rated",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text("Popular",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Image(image: AssetImage("assets/images/doctor.png"),),
                    ),
                    Image(image: AssetImage("assets/images/dumbldore.png"),),
                    Image(image: AssetImage("assets/images/dog.png"),),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
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




class Movie1 extends StatelessWidget {
  const Movie1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 144.61,
          height: 210,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: NetworkImage("https://via.placeholder.com/145x210"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}