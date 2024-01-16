import 'package:ecommerceuid/models/my_product.dart';
import 'package:ecommerceuid/pages/details_screen.dart';
import 'package:ecommerceuid/pages/your_cart_details.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

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
    return MaterialApp(debugShowCheckedModeBanner: false,
       home:Scaffold(
         body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 35),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                        image: 'assets/catagory_icons/apparel.png',
                        text: "Apparel"),
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
                ),
                GridView.count(
                  childAspectRatio: .7,
                  padding: EdgeInsets.only(right: 15),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    ...MyProducts.getallproducts().products!.map((e) {
                      return  GestureDetector(
                        onTap: () {
                          // Navigate to the product details screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(product: e),
                            ),
                          );
                        },
                        child: _productCard(e),
                      );
                    })
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
      ),
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
              color: Color(0xff393F42),
            ),
          ],
        ),
      );

  _productCard(Products product) => ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.transparent,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                product.thumbnail!,
                height: 112,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Text(
                  product.title!,
                  style: TextStyle(fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 6, bottom: 10),
                child: Text(
                  '\$${product.price}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add to cart"),
                  style: ButtonStyle(elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                    return 0; // Default elevation
                  }),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff67C4A7)),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
