/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing the main widget.
import 'screens/home.dart';

/// Importing Flutter's API.
import 'package:flutter/material.dart';


/// Main entry point for 
/// Dart compiler.
void main(){
    runApp(
        new MaterialApp(
            home: Home(),
            debugShowCheckedModeBanner: false
        )
    );
}