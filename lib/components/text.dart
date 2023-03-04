/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// A class for a re-usable text widget.
/// "DRY" is important.
class DollText extends StatelessWidget {

    /// The parameters this custom
    /// widget will accept.
    final String content;
    final Color color;
    final double fontSize;
    final String fontFamily;

    /// Class constructor with
    /// parameters.
    DollText(
        {
            required this.content,
            required this.color,
            required this.fontSize,
            required this.fontFamily
        }
    );

    /// Returning the widget tree from this
    /// class. The "build" method returns the
    /// widget tree.
    @override
    Widget build(BuildContext context){
        return new Text(
            this.content,
            style: new TextStyle(
                color: this.color,
                fontSize: this.fontSize,
                fontFamily: this.fontFamily
            )
        );
    }
}