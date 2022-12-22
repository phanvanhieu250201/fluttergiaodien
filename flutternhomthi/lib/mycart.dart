import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Icon(Icons.arrow_back, color: Colors.black,),
                    Text("My Cart",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        
                      ),
                      
                    ),
                    Text("",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        
                      ),
                      
                    ),                
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Image.asset('images/items.png', width: 24, height: 24,),

                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Items",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          
                        ),
                        
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
         
          
          Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Image.asset('images/iphone.png', width: 75, height: 75,),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("iPhone 14 Pro Max",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,                       
                        ),                        
                      ),
                      Text("6GB - 128GB, Gray",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          
                        ),                      
                      ),
                      Text("999",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 81, 0),                        
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/delete.png', width: 20, height: 20,),
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 81, 0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("-",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,                        
                                ),                              
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,                        
                                ), 
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("+",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,                        
                                ), 
                              ),
                            ),                        
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Image.asset('images/iphone.png', width: 75, height: 75,),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("iPhone 14 Pro Max",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,                       
                        ),                        
                      ),
                      Text("6GB - 128GB, Gray",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          
                        ),                      
                      ),
                      Text("999",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 81, 0),                        
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/delete.png', width: 20, height: 20,),
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 81, 0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("-",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,                        
                                ),                              
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,                        
                                ), 
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("+",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,                        
                                ), 
                              ),
                            ),                        
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),            
          Container(

          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Image.asset('images/promo_code.png', width: 24, height: 24,),

                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Promo Codes",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          
                        ),
                        
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 400.0,
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter promo codes',
                    ),
                    style: TextStyle(fontSize: 15.0, height: 2.5, color: Colors.black),
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 255, 81, 0),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Apply',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )                          
              ],
            ),
          ),            
          Expanded(child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const SizedBox(height: 20,),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("Title",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          
                        ),
                    )

                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("1998",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 255, 81, 0),
                          
                        ),
                        
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),           
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 255, 81, 0),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Proceed Checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                ),
              ),
            ),
          ),


                  ],

                  ) ),),
            ))                            

        ]),
      ),
    );    
  }
}