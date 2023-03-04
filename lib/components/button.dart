/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// A class for a re-usable button. "DRY"
/// is important.
class DollButton extends StatelessWidget {

    /// The parameters this custom
    /// widget will accept.
    final String triggerText;
    final Color color;
    final Color backgroundColor;
    final double fontSize;
    final double borderSize;
    final double elevation;
    final VoidCallback callback;
    final String fontFamily;
    final double padding;

    /// Class constructor with
    /// parameters.
    DollButton(
        {
            required this.triggerText,
            required this.color,
            required this.backgroundColor,
            required this.fontSize,
            required this.borderSize,
            required this.elevation,
            required this.callback,
            required this.padding,
            required this.fontFamily
        }
    );

    /// Returning the widget tree from this
    /// class. The "build" method returns the
    /// widget tree.
    @override
    Widget build(BuildContext context){
        return ElevatedButton(
            child: new Padding(
                padding: EdgeInsets.all(this.padding),
                child:new Text(
                    this.triggerText,
                    style: new TextStyle(
                        color: this.color,
                        fontSize: this.fontSize,
                        fontFamily: this.fontFamily
                    )
                )
            ),
            onPressed: this.callback,
            style: new ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            this.fontSize
                        ),
                        side: BorderSide(
                            color: this.color,
                            width: this.borderSize
                        )
                    )
                ),
                elevation: MaterialStateProperty.all(
                    this.elevation
                ),
                backgroundColor: MaterialStateProperty.all(
                    this.backgroundColor
                )
            )
        );
    }
}