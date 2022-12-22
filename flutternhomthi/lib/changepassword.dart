import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                    Text("Change Password",
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
            width: double.infinity,
            child: Image.asset('images/changepassword.png', width: 200, height: 200,),
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
                    Container(
                      child: const Text(
                        'Older Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '******'
                        ),
                      ),
                      ),
                      Container(
                      child: const Text(
                        'New Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '******'
                        ),
                      ),
                      ),
                      Container(
                      child: const Text(
                        'Retype New Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '******'
                        ),
                      ),
                      ),
                    const SizedBox(height: 20,),
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
                              'Save Change',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
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