import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutternhomthi/colortohex.dart';

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
        backgroundColor:hexToColor("#F3F3F3"),
        body: Column(children: [
          blockTitle(),
          blockImage(),

          Expanded(child: Container(
            
            width: double.infinity,
            decoration: BoxDecoration(
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
                    blockOlderPass(),
                    blockOlderPassword(),
                    blockNewPass(),
                    blockNewPasWord(),
                    blockRetypePass(),
                    blockPrtypePassword(),
                    const SizedBox(height: 200,),
                    blockButtonSaveChange(),


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
    );
  
  }
  blockImage(){
    return Container(
      width: double.infinity,
      child: Image.asset('images/changepassword.png', width: 200, height: 200,),
    );
  }
  blockOlderPass(){
    return  Container(
      child: const Text(
        'Older Password',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        )
      ),
    );
  }
  blockOlderPassword(){
    return  
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: ''
            ),
          ),
        ),
      );
  }
  blockNewPass(){
    return  Container(
    child: const Text(
      'New Password',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      )
    ),
  );
  }
  blockNewPasWord(){
    return  
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: ''
            ),
          ),
        ),
      );
      
  }
  blockRetypePass(){
    return Container(
    child: const Text(
      'Retype New Password',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      )
    ),
  );
  }
  blockPrtypePassword(){
    return 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: ''
            ),
          ),
        ),
      );
  }
  blockButtonSaveChange(){
    return  Container(
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