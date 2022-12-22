import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
        return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          blockTitle(),
          blockImage(),

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
                    blockUserName(),
                    blockUserNameText(),
                    blockIDUser(),
                    blockIDUserText(),
                    blockAddress(),
                    blockAddressText(),
                    blockPhone(),
                    blockPhoneText(),
                    blockEmail(),
                    blockEmailText(),
                    const SizedBox(height: 20,),
                    blockButtonSave(),


                  ],

                  ) ),),
            ))
        ]),
      ),
    );
  
  }
  blockTitle(){
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              Icon(Icons.arrow_back, color: Colors.black,),

              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text("Setting",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    
                  ),
                  
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
    );
  }
  blockImage(){
    return Container(
      width: double.infinity,
      child: Image.asset('images/avtar.png', width: 200, height: 200,),
    );
  }
  blockUserName(){
    return Container(
    child: const Text(
      'UserName',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      )
    ),
  );
  }
  blockUserNameText(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'David Backer',
        ),
      ),
      );
  }
  blockIDUser(){
    return Container(
      child: const Text(
        'ID User',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        )
      ),
    );
  }
  blockIDUserText(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'david21',
        ),
      ),
      );
  }
  blockAddress(){
    return Container(
      child: const Text(
        'Address',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        )
      ),
    );
  }
  blockAddressText(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '32 Nguyen Trai, TP.HCM'
        ),
      ),
      );
  }
  blockPhone(){
    return Container(
      child: const Text(
        'Phone Number',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        )
      ),
    );
  }
  blockPhoneText(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '0375899781'
        ),
      ),
      );
  }
  blockEmail(){
    return Container(
      child: const Text(
        'Email',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        )
      ),
    );
  }
  blockEmailText(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'davidbacker@gmail.com'
        ),
      ),
      );
  }
  blockButtonSave(){
    return Container(
      child: ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 81, 0)),
        onPressed: () {  },
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Save Change',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}