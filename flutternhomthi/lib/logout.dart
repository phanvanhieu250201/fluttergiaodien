import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
            return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [     
          const SizedBox(height: 30,),     
          Container(
            width: double.infinity,
            child: Image.asset('images/avtar.png', width: 200, height: 200,),
          ),
          const SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("User Name",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        
                      ),
                      
                    ),             
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
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            
                          ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Profile",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          
                                        ),
                                        
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        
                                      ),
                                      
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,),

                                  ],
                                ),
                                
                              ],
                            ),
                        ),
                      ),
                      const SizedBox(height: 30,),                     
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            
                          ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Change Password",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          
                                        ),
                                        
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        
                                      ),
                                      
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,),

                                  ],
                                ),
                                
                              ],
                            ),
                        ),
                      ), 
                      const SizedBox(height: 30,),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            
                          ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Setting",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          
                                        ),
                                        
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        
                                      ),
                                      
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,),

                                  ],
                                ),
                                
                              ],
                            ),
                        ),
                      ),                                                       
                    const SizedBox(height: 100,),
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
                              'Logout',
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