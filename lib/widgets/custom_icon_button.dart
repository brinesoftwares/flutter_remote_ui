import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final GestureTapCallback onPressed;

  CustomIconButton({@required this.onPressed, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
        onPressed: () {
          onPressed();
        },
        style: NeumorphicStyle(
          color: Colors.blue[100],
          shape: NeumorphicShape.flat,
          depth: 2,
          intensity: 0.9,
          border: NeumorphicBorder(
            color: Colors.lightBlue[100],
            width: 0.8,
          ),
          boxShape: NeumorphicBoxShape.circle(),
        ),
        padding: const EdgeInsets.all(15.0),
        child: icon);
  }
}
