import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/advertisement.dart';
import '../widgets/institutecard.dart';
import '../widgets/togglebutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(context),
          SearchWidget(context),
          FilterScroll(context),
          const SizedBox(
            height: 32,
          ),
          StackCard(context),
          const SizedBox(height: 21,),
          const InstituteCard(),
          const SizedBox(height: 21,),
          StackCard(context),
          const SizedBox(height: 21,),
          const AdvertisementCard(),
          const SizedBox(height: 21,),
          const InstituteCard(),


        ],

      ),
    );
  }
}

Widget HomeHeader(BuildContext context){
  return Row(

    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 36.0,
          height: 36.0,
          margin: EdgeInsets.only(top: 24.0, left: 21.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 3.0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 12,
              color: Colors.white,
            ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 24.0, left: 21.0),
          child: Text('For JEE-Mains',
              style: Theme.of(context)
                  .primaryTextTheme
                  .headline2),
        ),
      )
    ],
  );
}

//Search Widget Container Design
Widget SearchWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 25.0, right: 26, top: 29, bottom: 17),
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xFFBDBDBD),
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for UPSC Coaching',
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 22,
                ),
                onPressed: () {},
              ),
              Container(
                width: 1.5,
                height: 28,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(horizontal: 6),
              ),
              IconButton(
                icon: Icon(
                  Icons.mic_none_outlined,
                  size: 22,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
          border: InputBorder.none,
        ),
      ),
    ),
  );
}



//It handles the filter Menu Buttons
Widget FilterScroll(BuildContext context){
  return  Container(
    height: 29.0,
    margin: EdgeInsets.only(left: 25.0),
    child: ListView(
      scrollDirection: Axis.horizontal,

      children: [
        Container(
          height: 29.0,

          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 1.0,
            ),
            color: Colors.transparent,
          ),
          padding: EdgeInsets.only(left: 5,right: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                    'Filter',
                    style: Theme.of(context).primaryTextTheme.headline4
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.tune_outlined,
                color: Theme.of(context).primaryColor,
                size:   Theme.of(context).primaryTextTheme.headline4?.fontSize,
              ),
            ],
          ),
        ),
        Container(
          height: 29.0,
          padding: EdgeInsets.only(left: 5,right: 10),
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 1.0,
            ),
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                    'Sort',
                    style: Theme.of(context).primaryTextTheme.headline4
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).primaryColor,
                size:   Theme.of(context).primaryTextTheme.headline4?.fontSize,
              ),
            ],
          ),
        ),
        TogglingContainer(text: '<2km'),
        TogglingContainer(text: 'JEE'),
        TogglingContainer(text: 'CBSE'),
        TogglingContainer(text: 'NEET'),

      ],
    ),
  );
}


//This will contain the card who has students with same school studying
Widget StackCard(BuildContext context){
     return Stack(
       children: [
         Container(
           padding: const EdgeInsets.all(5),
           margin: const EdgeInsets.only(left: 26, right: 26),
           height: 205,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(16.0),
             boxShadow: const [
               BoxShadow(
                 color: Color.fromRGBO(0, 0, 0, 0.25),
                 blurRadius: 2.0,
                 offset: Offset(0, 0),
                 spreadRadius: 0,
               ),
             ],
             color: Theme.of(context).cardColor,
           ),
           child: Align(
             alignment: Alignment.bottomLeft,
             child:   RichText(
               text: TextSpan(
                 children: [
                   WidgetSpan(
                     alignment: PlaceholderAlignment.middle,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 8),
                       child: Icon(
                         Icons.brightness_1,
                         size: 5,
                         color: Theme.of(context).primaryTextTheme.subtitle2?.color,
                       ),
                     ),
                   ),
                   TextSpan(
                     text: ' 2 of your school students study here',
                     style: Theme.of(context).primaryTextTheme.subtitle2,
                   ),
                 ],
               ),
             ),
           ),
         ),
         const InstituteCard(),
       ],
     );
}