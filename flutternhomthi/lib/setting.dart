import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutternhomthi/colortohex.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}
const String kEmailNullError = "Please Enter your Email";
const String kEmailHon5KyTuError = "Email phải lớn hơn 5 ký tự";
final RegExp kemailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kInvalidEmailError = "Please Enter Valid Email";
const String kUserNameNullError = "Please Enter your UserName";
const String kIDUserNullError = "Please Enter your IDUser";
const String kAddressNullError = "Please Enter your Address";
const String kPhoneNullError = "Please Enter your Phone Number";
// var email = "tony123_90874.coder@yahoo.co.in";
// bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email);
// var kemailtest = kemailValid.hasMatch(email);

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {

        return SafeArea(
      child: Scaffold(
        backgroundColor: hexToColor("#F3F3F3"),
        body: Column(children: [
          
          blockTitle(),
          blockImage(),

          Expanded(child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: hexToColor("#F3F3F3"),
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
                child: Text('Setting',
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
                return kUserNameNullError;
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
                return kIDUserNullError;
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
                return kAddressNullError;
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
                return kPhoneNullError;
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
                  return kEmailNullError;
                }
                else{
                  if(value.length < 5)
                    return kEmailHon5KyTuError;
                  else{
                    if(kemailValid.hasMatch(value) != true){
                      return kInvalidEmailError;
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