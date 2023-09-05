
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvertisementCard extends StatelessWidget {
  const AdvertisementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 82,
      margin: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        children: [

          Container(
            width: 79,
            height: 82,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/advertisement.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Center: Text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Having a tough time navigating through your career roadmap?',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
            ),
          ),

          // Right: Button
          Container(
            padding: const EdgeInsets.only(left: 12,right: 12),
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                'Ask Ostello',
                style: Theme.of(context).primaryTextTheme.caption,
              ),
            ),
          ),
        ],
      ),
    );

  }
}
