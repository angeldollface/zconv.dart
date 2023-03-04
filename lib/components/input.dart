/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// A class for a re-usable input field.
/// "DRY" is important.
class NumberInput extends StatelessWidget {

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
        return TextField(
            controller: this.controller,
            style: new TextStyle(
                fontSize: this.fontSize,
                color: this.backgroundColor,
                fontFamily: this.fontFamily
            ),
            onEditingComplete: this.inputCallback,
            decoration: new InputDecoration(
                contentPadding: EdgeInsets.all(this.padding),
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.all(
                        new Radius.circular(
                            this.radius
                        )
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.all(
                        new Radius.circular(
                            this.radius
                        )
                    ),
                    borderSide: BorderSide(
                        width: this.borderSize, 
                        color: this.backgroundColor
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.all(
                        new Radius.circular(
                            this.radius
                        )
                    ),
                    borderSide: BorderSide(
                        width: this.borderSize, 
                        color: this.backgroundColor
                    )
                ),
            )
        );
    }
}