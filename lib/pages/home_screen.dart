import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var searchlocation = TextEditingController();
  var searchbar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 35),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 28,
                width: 168,
                child: TextField(
                  controller: searchlocation,
                  decoration: InputDecoration(
                    labelText: 'delivery address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                  height: 28,
                  width: 28,
                  child: ImageIcon(
                    AssetImage('assets/icons/Buy.png'),
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 28,
                  width: 28,
                  child: ImageIcon(
                    AssetImage('assets/icons/Notification.png'),
                  )),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Container(
              height: 40,
              width: 350,
              child: TextField(
                controller: searchbar,
                decoration: InputDecoration(
                  prefixIcon: Container(
                      height: 20,
                      width: 20,
                      child: Icon(
                        Icons.search,
                      )),
                  labelText: 'Search here...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
            ),
          ),
          SizedBox(height: 7),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _bannerlist(image: 'assets/banner/banner.png'),
                _bannerlist(image: 'assets/banner/banner1.png'),
                _bannerlist(image: 'assets/banner/banner2.jpg'),
                _bannerlist(image: 'assets/banner/banner3.jpg'),
              ],
            ),
          ),
          SizedBox(height: 7),
          Container(
            height: 27,
            width: 350,
            child: Text(
              "Catagory",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              _catagorylist(
                  image: 'assets/catagory_icons/apparel.png', text: "Apparel"),
              _catagorylist(
                  image: 'assets/catagory_icons/school.png', text: "School"),
              _catagorylist(
                  image: 'assets/catagory_icons/sports.png', text: "Sports"),
              _catagorylist(
                  image: 'assets/catagory_icons/electronics.png',
                  text: "Electronics"),
              _catagorylist(
                  image: 'assets/catagory_icons/all.png', text: "All"),
            ],
          ),
          SizedBox(
            height: 17,
          ),
          Row(
            children: [
              Container(
                  height: 28,
                  width: 170,
                  child: Text(
                    "Recent product",
                    style: TextStyle(
                        color: Color(0xFF393F42),
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(width: 73),
              _filterbutton(),
            ],
          )
        ],
      ),
    );
  }

  _bannerlist({required String image}) => Container(
        height: 144,
        width: 304,
        child: Image(image: AssetImage(image)),
      );
  _catagorylist({required String image, required String text}) => InkWell(
        onTap: () {},
        child: Column(
          children: [
            Container(
              height: 70,
              width: 69,
              child: Image(
                image: AssetImage(image),
                height: 40,
                width: 40,
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
      );
  _filterbutton() => TextButton(
        onPressed: () {
          // Handle button press
        },
        style: TextButton.styleFrom(
          primary: Color(0xff393F42), // Set the text color
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'filter',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(width: 8.0),
            ImageIcon(
              AssetImage('assets/icons/filter.png'),
              color:Color(0xff393F42),
            ),
          ],
        ),
      );
}
