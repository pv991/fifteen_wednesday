import 'package:fifteen_wednesday/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:fifteen_wednesday/screen/utilis/mydefaults.dart';
import 'package:fifteen_wednesday/screen/utilis/mywidgets.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController callcontroller = TextEditingController();
  TextEditingController pswcontroller = TextEditingController();
  TextEditingController addrescontroller = TextEditingController();
  TextEditingController pincodecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 247, 225, 0.8745098039215686),
      body: SafeArea(child:
      Column(children: [
        Image.asset(Myconfig().myLoginScreenLogo,height: 75,width: 500,),

        SizedBox(
          height:Myconfig().myHeight*1,
        ),
        MyInputField(
          myicon: Icon(Icons.person,size: Myconfig().myIconSize, color: Myconfig().myIconColor ),
          mykeyboard: TextInputType.text,
          hinttext: "Full Name",
          mycontoller: namecontroller,
          obsecure: false,
        ),
        SizedBox(
          height: Myconfig().myHeight*1,
        ),
        MyInputField(
          myicon: Icon(Icons.email,size: Myconfig().myIconSize, color: Myconfig().myIconColor ),
          mykeyboard: TextInputType.text,
          hinttext: "Email Address",
          mycontoller: mailcontroller,
          obsecure: false,
        ),
        SizedBox(
          height: Myconfig().myHeight*1,
        ),
        MyInputField(
          myicon: Icon(Icons.call,size: Myconfig().myIconSize, color: Myconfig().myIconColor ),
          mykeyboard: TextInputType.phone,
          hinttext: "Mobile Number",
          mycontoller: callcontroller,
          obsecure: false,
        ),
        SizedBox(
          height: Myconfig().myHeight*1,
        ),
        MyInputField(
          myicon: Icon(Icons.lock,size: Myconfig().myIconSize, color: Myconfig().myIconColor ),
          mykeyboard: TextInputType.text,
          hinttext: "Password",
          obsecure: true,
          mycontoller: pswcontroller,
        ),
        SizedBox(
          height: Myconfig().myHeight*1,
        ),
        MyInputField(
          myicon: Icon(Icons.location_city,size: Myconfig().myIconSize, color: Myconfig().myIconColor ),
          mykeyboard: TextInputType.text,
          hinttext: "Address",
          mycontoller: addrescontroller,
          obsecure: false,
        ),
        SizedBox(
          height: Myconfig().myHeight*1,
        ),
        MyInputField(
          myicon: Icon(Icons.call,size: Myconfig().myIconSize, color: Myconfig().myIconColor ),
          mykeyboard: TextInputType.phone,
          hinttext: "Pin Code",
          mycontoller: pincodecontroller,
          obsecure: false,
        ),
        SizedBox(
          height: Myconfig().myHeight*1,
        ),
        MyButton(
          ontap: () async {
            _submit();
          },
          buttontext: "SIGN UP",
        ),
        SizedBox(height: 25,),
        MyButton(
          ontap: (){              Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginScreen()),
          );
          },
          buttontext: "SIGN IN",
        ),

      ],)
      ),
    );

  }

  void _submit() async {
    // final isValid = _formKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // } else {
    if (namecontroller.text.isEmpty) {
      //print(nameControler.toString());
      Myconfig().toast(msg: "Please Enter Full Name");
      return;
    }

    if (!Myconfig().nameValidator(value: namecontroller.text)) {
      Myconfig().toast(msg: "Please Enter Full Name");
      return;
    }

    if (mailcontroller.text.isEmpty) {
      Myconfig().toast(msg: "Please Enter Email");
      return;
    }

    if (!Myconfig().emailValidator(value: mailcontroller.text)) {
      Myconfig().toast(msg: "Please Enter Valid Email");
      return;
    }

    if (callcontroller.text.isEmpty) {
      Myconfig().toast(msg: "Please Enter Cell Phone");
      return;
    }

    // if (!_Myconfig().mobileValidator(value: cellphoneControler.text)) {
    //   _Myconfig().toast(msg: "Please Enter Valid Cell Phone");
    //   return;
    // }

    if (!Myconfig().passwordValidator(value: pswcontroller.text)) {
      Myconfig().toast(
          msg:
          "Password must have at least one upper character, one number and one Special Character");
      return;
    }
    if (addrescontroller.text.isEmpty) {
      Myconfig().toast(msg: "Please Enter Address");
      return;
    }
    if (pincodecontroller.text.isEmpty) {
      Myconfig().toast(msg: "Please Enter Zip Code");
      return;
    }

    // if (!_Myconfig().zipValidator(value: zipcodeControler.text)) {
    //   _Myconfig().toast(msg: "Zipcode is Invalid");
    //   return;
    // }
  }
}