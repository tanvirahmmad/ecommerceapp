import 'package:ecommerceuid/models/product.dart';
import 'package:ecommerceuid/pages/home_screen.dart';
import 'package:ecommerceuid/pages/your_cart_details.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Products product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Column(

            children: [
              Expanded(flex:10,child:SingleChildScrollView(scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Container(
                            height: 30,
                            width: 30,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xff393F42),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()) );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 87,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Details product",
                            style: TextStyle(color: Color(0xff393F42), fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 45,
                            width: 45,
                            child: IconButton(
                              icon: Image.asset(
                                  'assets/icons/Buy.png'), // Replace with your image path
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => YourCartDetails(),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ]),
                    ),

                    Container(
                        width: 390,
                        height: 286,
                        child: Image.network(
                          product.thumbnail!,
                          height: 112,
                          fit: BoxFit.cover,
                        )),


                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title!,
                            style: TextStyle(fontSize: 12),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${product.price}',
                                style:
                                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 8,
                              ),

                              Container(
                                height: 17,
                                width: 148,
                                child: Text(
                                  '( 219 people buy this )',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff393F42),
                                  ),
                                ),
                              ),
                              Spacer(), // Adds space between text and icon
                              Container(
                                  width: 46,
                                  height: 46,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300, // Set your desired background color
                                    shape: BoxShape.circle,
                                  ),
                                child: IconButton(
                                  icon: Image.asset(
                                      "assets/icons/Heart.png",), // Replace with your image path
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),  Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
      children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500, // Set your desired background color
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.apple,size: 35,), // Replace with your image path
                    onPressed: () {},
                  ),
                ),


      SizedBox(
      width: 8,
      ),
Column(children: [
  Container(margin: new EdgeInsets.only(right: 53),
      child: Text("Apple Store",style:TextStyle(fontSize: 18,color: Color(0xff393F42))),
  ),
  Container(
      height: 17,
      width: 148,
      child: Text(
                'online 12 mins ago',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff939393),
                ),
      ),
  ),

],)

      , // Adds space between text and icon
                SizedBox(width: 10,),
                      TextButton(style: ButtonStyle(minimumSize:
                      MaterialStateProperty.all(Size(107, 37)), backgroundColor:
                      MaterialStateProperty.all(Color(0xffD9D9D9)),),
                        onPressed: () {

                        },
                        child: Text(
                          'Follow',
                          style: TextStyle(fontSize: 14,color: Color(0xff393F42)),
                        ),
                      ),
      ],
      ),
      ),

                       Container(margin: EdgeInsets.only(right: 150,top: 15),
                         child: Text("Description of product",style: TextStyle(
                            fontSize:18 ,fontWeight: FontWeight.w500,),
                            ),
                       ),
SizedBox(height: 2),



                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        product.description!,
                        style: TextStyle(fontSize: 13, color: Color(0xff393F42)),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 10),


                  ],
                ),
              ),),
              Expanded(flex:1,
                child: Container(color: Colors.white,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(style:ButtonStyle(minimumSize:
                      MaterialStateProperty.all<Size>(Size(150, 45)),backgroundColor: MaterialStateProperty.all(Color(0xff67C4A7))),onPressed: (){}, child:
                      Text("Add to Cart",style: TextStyle(fontSize: 14),)),


                      TextButton(style: ButtonStyle(minimumSize:
                      MaterialStateProperty.all(Size(167, 45)), backgroundColor:
                      MaterialStateProperty.all(Color(0xffD9D9D9)),),
                        onPressed: () {

                        },
                        child: Text(
                          'Buy NOW',
                          style: TextStyle(fontSize: 14,color: Color(0xff393F42)),
                        ),
                      ),
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
