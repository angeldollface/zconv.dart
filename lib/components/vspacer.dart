/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// A class for a re-usable spacer widget.
/// "DRY" is important.
class VerticalSpacer extends StatelessWidget {

    /// The parameters this custom
    /// widget will accept.
    final double size;

    /// Class constructor with
    /// parameters.
    VerticalSpacer(
        {
            required this.size
        }
    );

    /// Returning the widget tree from this
    /// class. The "build" method returns the
    /// widget tree.
    @override
    Widget build(BuildContext context){
        return SizedBox(
            height: this.size
        );
    }
}