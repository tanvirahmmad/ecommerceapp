import 'package:ecommerceuid/models/my_product.dart';
import 'package:ecommerceuid/pages/details_screen.dart';
import 'package:ecommerceuid/pages/home_screen.dart';
import 'package:ecommerceuid/pages/paymentmethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class YourCartDetails extends StatefulWidget {
  YourCartDetails({super.key});

  @override
  State<YourCartDetails> createState() => _YourCartDetailsState();
}

class _YourCartDetailsState extends State<YourCartDetails> {
  late Products products;
  @override
  void initState() {
    Product withdata = MyProducts.getallproducts();
    products = withdata.products!.first;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: products,)) );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Your Cart",
                        style: TextStyle(
                            color: Color(0xff393F42),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      width: 173,
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


                          },
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.100),
                        spreadRadius: 1,
                        blurRadius: 0,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          'Delivery to',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 70), // Add some space between the texts
                      Text(
                        'Salatiga City, Central Java',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                buildProductsDetails(),
                buildProductsDetails(),
                buildProductsDetails(),
                buildProductsDetails(),
                buildProductsDetails(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 320, // Set your desired width
                            height: 60, // Set your desired height
                            child: Expanded(
                              child: DropdownButtonFormField<String>(
                                items: ['Option 1', 'Option 2', 'Option 3']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // Handle the selected option
                                  print('Selected Option: $value');
                                },
                                decoration: InputDecoration(
                                  labelText: 'Select the deloivery option',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          SizedBox(
                            width: 320, // Set your desired width
                            height: 60, // Set your desired height
                            child: Expanded(
                              child: DropdownButtonFormField<String>(
                                items: ['20%', '40%', '60%'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // Handle the selected option
                                  print('Selected Option: $value');
                                },
                                decoration: InputDecoration(
                                  labelText: 'Apply a discounts',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Summary",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text("Total Price(3items)"),
                    Text("Order Summary"),
                  ],
                ),
                SizedBox(
                  width: 143,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Container(child: Text('\$${24999.8}')),
                      ),
                      Text("\$${24999.8}"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.orange,
                child: Expanded(
                  flex: 4,
                  child: Container(
                    height: 45,
                    width: 325,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff67C4A7))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
                        },
                        child: Text(
                          'Selected payment method',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ),
              )),
        ],
      )),
    );
  }

  Widget buildProductsDetails() {
    bool isChecked = false;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 30),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 5,
                height: 5,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // Handle checkbox state changes here
                  },
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 80,
            width: 100,
            child: Image.network(
              products.thumbnail!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Text(
                          "Product name is apple",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Varien=yellow",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35, bottom: 28),
                    child: Container(
                      child: SizedBox(
                          width: 10,
                          height: 10,
                          child: IconButton(
                            icon: Icon(CupertinoIcons.delete),
                            onPressed: () {},
                          )),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.only(bottom: 8),
                    child: Text(
                      "\$${122.00}",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 30, bottom: 27),
                    child: SizedBox(
                        height: 10,
                        width: 10,
                        child: IconButton(
                          icon: Icon(CupertinoIcons.minus),
                          onPressed: () {},
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      child: SizedBox(height: 20, width: 20, child: Text('1'))),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, bottom: 29),
                    child: Container(
                      child: SizedBox(
                          width: 10,
                          height: 10,
                          child: IconButton(
                            icon: Icon(CupertinoIcons.add),
                            onPressed: () {},
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
