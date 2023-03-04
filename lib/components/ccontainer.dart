/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// A class for a re-usable container. "DRY"
/// is important.
class DollContainer extends StatelessWidget{

    /// The parameters this custom
    /// widget will accept.
    final Color color;
    final Widget child;
    final double width;
    final double radius;
    final double borderSize;
    final Color borderColor;

    /// Class constructor with
    /// parameters.
    DollContainer(
        {
            required this.child,
            required this.width,
            required this.color,
            required this.radius,
            required this.borderSize,
            required this.borderColor
        }
    );

    /// Returning the widget tree from this
    /// class. The "build" method returns the
    /// widget tree.
    @override
    Widget build(BuildContext context){
        return Container(
            width: this.width,
            child: this.child,
            decoration: BoxDecoration(
                border: Border.all(
                    color: this.borderColor,
                    width: this.borderSize
                ),
                color: this.color,
                borderRadius: BorderRadius.circular(this.radius),
            ),
        );
    }
}