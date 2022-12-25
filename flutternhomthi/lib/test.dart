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
const String kOlderPassNullError = "Please Enter your Older Password";
const String kMatchOlderPassEror = "Passwords don't match";
const String kShortOlderPassError = "Older Password is too short";
const String kOlderPassInvalidError = "Please Enter Valid Older Password";
const String kNewPassNullError = "Please Enter your New Password";
const String kShortNewPassError = "New Password is too short";
const String kNewPassInvalidError = "Please Enter Valid New Password";
const String kRetypeNewPassNullError = "Please Enter your Retype New Password";
const String kRetypeShortNewPassError = "Retype New Password is too short";
const String kRetypeNewPassInvalidError = "Please Enter Valid Retype New Password";
final RegExp passwordValidatorRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
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
          child: TextFormField(
            validator: (value){
              if(value==null || value.isEmpty){
                return kOlderPassNullError;
              }
              else{
                if(value.length < 5){
                  return kShortOlderPassError;
                }
                else{
                  if(passwordValidatorRegex.hasMatch(value) != true){
                    return kOlderPassInvalidError;
                  }
                }
              }
              return null;
            }, 
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
          child: TextFormField(
            validator: (value){
              if(value==null || value.isEmpty){
                return kNewPassNullError;
              }
              else{
                if(value.length < 5){
                  return kShortNewPassError;
                }
                else{
                  if(passwordValidatorRegex.hasMatch(value) != true){
                    return kNewPassInvalidError;
                  }
                }
              }
              return null;
            },             
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
          child: TextFormField(
            validator: (value){
              if(value==null || value.isEmpty){
                return kRetypeNewPassNullError;
              }
              else{
                if(value.length < 5){
                  return kRetypeShortNewPassError;
                }
                else{
                  if(passwordValidatorRegex.hasMatch(value) != true){
                    return kRetypeNewPassInvalidError;
                  }
                }
              }
              return null;
            },            
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