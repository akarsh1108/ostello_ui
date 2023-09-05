import 'package:flutter/material.dart';

class InstituteCard extends StatelessWidget {
  const InstituteCard({Key? key}) : super(key: key); // Correct the constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.5),
      margin: const EdgeInsets.only(left: 26, right: 26),
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4.0,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: [
          InstituteImage(context,'Kalkaji , New Delhi'),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Metro Coaching Center',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                const SizedBox(height: 6,),
                Row(
                  children: [
                    Container(
                      width: 14,
                      height: 14,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff257F41)
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.star,
                          size: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 2), // 2-pixel right padding
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '4.3',
                            style: Theme.of(context).primaryTextTheme.subtitle2,
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Icon(
                                Icons.brightness_1,
                                size: 3,
                                color: Theme.of(context).primaryTextTheme.subtitle2?.color,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: ' 4 km away',
                            style: Theme.of(context).primaryTextTheme.subtitle2,
                          ),
                        ],
                      ),
                    )

                  ],
                ),

                const SizedBox(height: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                      Row(
                        children: [
                          Tags(context, 'PHYSICS'),
                          SizedBox(width: 5),
                          Tags(context, 'MATHS'),
                        ],
                      ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Tags(context, 'CHEMISTRY'),
                        SizedBox(width: 5),
                        Tags(context, 'JEE'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Discount(context,'20% OFF')
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget InstituteImage(BuildContext context, String InstText) {
  return Stack(
    alignment: Alignment.centerLeft,
    children: [
      Container(
        width: 140,
        height: 140.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('assets/ostellocard.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
          width: 140,
          height: 140.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,

                Color(0xF07D23E0),
              ],
              stops: [0.5, 0.9],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:  [
                  const Icon(
                    Icons.location_on,
                    size: 10,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    InstText,
                    style: Theme.of(context).primaryTextTheme.subtitle1?.copyWith(color: Colors.white,letterSpacing: 0.01),
                  ),
                ],
              ),
            ),
          )

      ),

    ],
  );
}
Widget Tags(BuildContext context, String tagText) {
  return Container(
    height: 19,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(color: Color(0x787D23E0)),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: Text(
          tagText,
          style: Theme.of(context).primaryTextTheme.subtitle1,
        ),
      ),
    ),
  );
}


Widget Discount(BuildContext context, String tagText) {
  return Container(
    height: 19,
   width: 57,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Theme.of(context).primaryColor,
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 6, right: 6,top: 2),
      child: Center(
        child: Text(
          tagText,
          style: Theme.of(context).primaryTextTheme.subtitle1?.copyWith(color: Colors.white),
        ),
      ),
    ),
  );
}
