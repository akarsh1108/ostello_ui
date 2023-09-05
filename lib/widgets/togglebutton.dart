import 'package:flutter/material.dart';

class TogglingContainer extends StatefulWidget {
  final String text;

  TogglingContainer({required this.text});

  @override
  _TogglingContainerState createState() => _TogglingContainerState();
}

class _TogglingContainerState extends State<TogglingContainer> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isToggled = !isToggled;
        });
      },
      child: Container(
        height: 29.0,
        padding: EdgeInsets.only(left: 20, right: 20),
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 1.0,
          ),
          color: isToggled ? Theme.of(context).primaryColor : Colors.transparent,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: Theme.of(context).primaryTextTheme.headline4?.copyWith(
              color: isToggled ? Colors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}