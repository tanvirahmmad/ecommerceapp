import 'package:ecommerceuid/pages/your_cart_details.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});


  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var existingCardnumber = TextEditingController();

  var addNewCardnumber = TextEditingController();

  var motnthYear = TextEditingController();

  var cardHoldername = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Expanded(flex: 9,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
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
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => YourCartDetails()));
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
                      "Payment method",
                      style: TextStyle(
                          color: Color(0xff393F42),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 45,
                      width: 45,
                      child: IconButton(
                        icon: Image.asset(
                            'assets/icons/Buy.png'),
                        // Replace with your image path
                        onPressed: () {},
                      ),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(height: 14),
            Container(margin: EdgeInsets.only(right: 184),
                child: Text("Select existing card", style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w500,),))
            , Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 50,
                  width: 330,
                  child: TextField(keyboardType: TextInputType.number,
                    controller: existingCardnumber,
                    decoration: InputDecoration(suffixIcon: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        // Your onPressed callback goes here
                        print('IconButton pressed!');
                      },
                    ),
                      prefixIcon: Container(
                        height: 20,
                        width: 20,
                        child: IconButton(
                          icon: Icon(Icons.add_card),
                          onPressed: () {
                            // Your onPressed callback goes here
                            print('IconButton pressed!');
                          },
                        ),),
                      labelText: 'your card',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  )
              ),
            ),

            SizedBox(height: 14),
            Container(margin: EdgeInsets.only(right: 200),
                child: Text("Or input new card", style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w500,),)),
            SizedBox(height: 14),
            Container(margin: EdgeInsets.only(right: 247),
                child: Text("Card number", style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w300,),))
            , Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 50,
                  width: 330,
                  child: TextField(keyboardType: TextInputType.number,
                    controller: addNewCardnumber,
                    decoration: InputDecoration(suffixIcon: IconButton(
                      icon: Image.asset('assets/icons/visa.png'),
                      onPressed: () {
                        // Your onPressed callback goes here
                        print('IconButton pressed!');
                      },
                    ),

                      labelText: 'card number please',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  )
              ),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  children: [
                    Container(margin: EdgeInsets.only(right: 67), child:
                    Text("Exp date",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight
                          .w300,),)),
                    SizedBox(height: 7,),
                    Container(margin: EdgeInsets.only(left: 20),
                        height: 50,
                        width: 150,
                        child: TextField(keyboardType: TextInputType.text,
                          controller: motnthYear,
                          decoration: InputDecoration(

                            labelText: 'mm/yy',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(width: 24,),
                Column(
                  children: [
                    Container(margin: EdgeInsets.only(right: 90), child:
                    Text("Exp date",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight
                          .w300,),)),
                    SizedBox(height: 7,),
                    Container(
                        height: 50,
                        width: 150,
                        child: TextField(keyboardType: TextInputType.text,
                          controller: motnthYear,
                          decoration: InputDecoration(


                            labelText: 'mm/yy',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                        )
                    ),
                  ],
                ),


              ],
            ),
            SizedBox(height: 14),
            Container(margin: EdgeInsets.only(right: 247),
                child: Text("Card holder", style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w300,),))
            , Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 50,
                  width: 330,
                  child: TextField(keyboardType: TextInputType.text,
                    controller: cardHoldername,
                    decoration: InputDecoration(

                      labelText: 'Enter card holder name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  )
              ),
            ),

            Row(
              children: [
                Container(margin: EdgeInsets.only(left: 20, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order Summary",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight
                            .w500),
                      ),

                      Text("Totals"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 143,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    child: Column(
                      children: [

                        Text("\$${24999.8}"),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                color: Colors.orange,
                child: Expanded(
                  flex: 2,
                  child: Container(
                    height: 45,
                    width: 325,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Color(0xff67C4A7))),
                        onPressed: () {

                        },
                        child: Text(
                          'Selected payment method',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ),
              ),
            ),


          ],

        ),
      ),
    ),);
  }

}



