/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing my library to handle
/// number system conbversions.
import 'package:harpo/harpo.dart';

/// A method to siwtch between
/// input modes.
/// Returns the mode as a string.
String getNext(String current){
    String result = 'dec';
    if (current == 'dec') {
        result = 'bin';
    }
    else if (current == 'bin'){
        result = 'hex';
    }
    else {
        result = 'dec';
    }
    return result;
}

/// A method to process user input, given the mode
/// and the user's input. Returns the output as
/// a string.
String processInput(String mode, String input){
    String result = 'Invalid input.';
    if (mode == 'bin'){
        result = binToDec(input);
    }
    else if (mode == 'hex'){
        result = hexToDec(input);
    }
    else if (mode == 'dec'){
        result = (decToBin(int.parse(input))).toString() + '|' + (decToHex(int.parse(input))).toString();
    }
    return result;
}