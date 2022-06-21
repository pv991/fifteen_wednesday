
import 'package:flutter/material.dart';
import 'package:fifteen_wednesday/screen/utilis/mydefaults.dart';
import 'package:fifteen_wednesday/screen/utilis/mywidgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Myconfig _myconfig = Myconfig();


  int sliderCurrentIndex = 0;



  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 80,
        elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {
            // Navigator.pop(context);
          },
          child: Image.asset(
            "assets/images/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "All in One Fruit Store",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body:  Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SearchBar(
          //   onTap: () {
          //
          //   },
          //   text: "Search Products",
          //   height: 40,
          //   showFilterIcon: false,
          //   showSearchIcon: true,
          // ),
          Divider(
            color: Colors.redAccent,
            height: 5,
            thickness: 3,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height:
                    MediaQuery.of(context).size.width >
                        450
                        ? MediaQuery.of(context)
                        .size
                        .height *
                        0.5
                        : MediaQuery.of(context)
                        .size
                        .height *
                        0.5,
                    width:
                    MediaQuery.of(context).size.height *
                        0.50,
                    child: Card(
                        color: Colors.transparent,
                        elevation: 200,
                        //child: Image.asset("assets/images/homepage1.png"),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoP40tWvU61GMtnR85ILmTOvRh9qO4FZZNug&usqp=CAU"),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Fresh Fruits",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                ],
              )
              , Column(
                children: [
                  Container(
                    height:
                    MediaQuery.of(context).size.width >
                        450
                        ? MediaQuery.of(context)
                        .size
                        .height *
                        0.5
                        : MediaQuery.of(context)
                        .size
                        .height *
                        0.5,
                    width:
                    MediaQuery.of(context).size.height *
                        0.4,
                    child: Card(
                        color: Colors.transparent,
                        elevation: 200,
                        child: Image.asset("assets/images/staticsamosa.png")


                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "FAST FOOD",
                  ),

                ],
              )



            ],
          ),
          Spacer(),

        ],
      ),
    );



  }}