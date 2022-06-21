import 'package:fifteen_wednesday/screen/product.dart';
import 'package:fifteen_wednesday/screen/registrationscreen.dart';
import 'package:flutter/material.dart';
import 'package:fifteen_wednesday/screen/utilis/mydefaults.dart';
import 'package:fifteen_wednesday/screen/utilis/mywidgets.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Myconfig _myconfig = Myconfig();

  TextEditingController cellphonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.fromRGBO(),
      backgroundColor: Color.fromRGBO(246, 233, 209, 0.8745098039215686),
      body: SafeArea(child:
      Column(children: [

     Image.asset(_myconfig.myLoginScreenLogo),

        SizedBox(
          height: _myconfig.myHeight*3,
        ),

        MyInputField(
          myicon: Icon(Icons.call,size: _myconfig.myIconSize, color: _myconfig.myIconColor ),

          mykeyboard: TextInputType.phone,
          hinttext: "Email or mobile phone number",
          mycontoller: cellphonecontroller,
          obsecure: false,
        ),
        SizedBox(
          height: _myconfig.myHeight,
        ),
        MyInputField(myicon: Icon(Icons.lock, size: _myconfig.myIconSize, color: _myconfig.myIconColor),
            mykeyboard: TextInputType.text,
            hinttext: "Password",
            obsecure: true,
            mycontoller: passwordcontroller),
        SizedBox(
          height: _myconfig.myHeight,
        ),
        // MyInputField(myicon: Icon(Icons.lock, size: _myconfig.myIconSize, color: _myconfig.myIconColor),
        //  mykeyboard: TextInputType.text,
        //   hinttext: "Confirm Password",
        //    obsecure: true,
        //     mycontoller: confirmpasswordcontroller)

        Text("Forgot Password?", style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        SizedBox(
          height: _myconfig.myHeight,
        ),

        MyButton(
          ontap: (){              Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductScreen()),
          );
          },
          buttontext: "SIGN IN",
        ),
        SizedBox(
          height: _myconfig.myHeight,
        ),
        MyButton(
            ontap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => RegisterScreen()),
            );

            }, buttontext: "SIGN UP")







      ],)

      ),
    );
  }

  void _submit() async {
    if (cellphonecontroller.text.isEmpty) {
      Myconfig().toast(msg: "Please Enter Mobile Phone");
      return;
    }

    if (passwordcontroller.text.isEmpty) {
      Myconfig().toast(msg: "Please Enter Password");
      return;
    }
  }
}