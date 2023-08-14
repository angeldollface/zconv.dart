/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's API.
import 'package:flutter/material.dart';

class NumberInput extends StatefulWidget {
    /// Setting up the state handler.
    NumberInputState createState(){
        return NumberInputState();
    }
}

/// A class for a re-usable input field.
/// "DRY" is important.
class NumberInputState extends State<Number> {

    /// The parameters this custom
    /// widget will accept.
    final TextEditingController controller;
    final Color backgroundColor;
    final double borderSize;
    final Color color;
    final double fontSize;
    final double radius;
    final String fontFamily;
    final double padding;
    final VoidCallback inputCallback;

    /// Class constructor with
    /// parameters.
    NumberInput(
        {
            required this.controller,
            required this.backgroundColor,
            required this.color,
            required this.fontSize,
            required this.borderSize,
            required this.radius,
            required this.fontFamily,
            required this.padding,
            required this.inputCallback
        }
    );

    /// Returning the widget tree from this
    /// class. The "build" method returns the
    /// widget tree.
    @override
    Widget build(BuildContext context) {
        
    }
}