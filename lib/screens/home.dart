/*
ZCONV.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing a file with 
/// layout variables so that
/// have more maintainable code.
import '../vars.dart';

/// Importing our methods
/// to process data.
import '../utils/utils.dart';

/// Importing our custom text widget
/// to give useful feedback to the user.
import '../components/text.dart';

/// Importing our custom input field
/// to get input from the user.
import '../components/input.dart';

/// Importing our custom button to do
/// some useful conversions!
import '../components/button.dart';

/// Importing our custom spacer to use
/// whitespace wisely.
import '../components/vspacer.dart';

/// Importing our custom container to build
/// our feedback messages.
import '../components/ccontainer.dart';

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// The class containing the main widget.
/// This has to be stateful because data
/// will change.
class Home extends StatefulWidget{

    /// Setting up the state handler.
    HomeState createState(){
        return HomeState();
    }
}

/// Managing state in conjunction with
/// a widget tree.
class HomeState extends State<Home> {

    /// Our stateful data:
    /// mode, user input,
    /// and output.
    late String mode;
    late String start;
    late String result;

    /// What should the stateful
    /// data start with?
    @override
    void initState(){
        this.mode = 'dec';
        this.start = '';
        this.result = '';
    }

    /// Returning our widget tree.
    @override
    Widget build(BuildContext context){
        TextEditingController controller = new TextEditingController();
        return Scaffold(
            backgroundColor: mainColor,

            /// No scrolling!
            body: new Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: new Center(
                    child: new Column(
                        children: <Widget> [

                            /// Fleshing out our layout with
                            /// whitespace.
                            new VerticalSpacer(
                                size: MediaQuery.of(
                                    context
                                ).size.height * stdSpacerSize
                            ),

                            /// Main container that constricts the 
                            /// horizontal span of the children.
                            new Container(
                                width: MediaQuery.of(context).size.width * widthFactor,
                                child: new Column(
                                    children: <Widget> [

                                        /// Heading text.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new Container(
                                                width: double.infinity,
                                                child: new Center(
                                                    child:new DollText(
                                                        content: appName,
                                                        color: accentColor,
                                                        fontSize: headingFontSize,
                                                        fontFamily: headingFont
                                                    )
                                                )
                                            )
                                        ),
                                        
                                        /// Getting user input.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new Container(
                                                width: double.infinity,
                                                child: new NumberInput(
                                                    padding: stdPadding,
                                                    radius: stdFontSize,
                                                    controller: controller,
                                                    backgroundColor: accentColor,
                                                    color: mainColor,
                                                    fontSize: stdFontSize,
                                                    fontFamily: contentFont,
                                                    borderSize: stdBorderSize,
                                                    inputCallback: () {
                                                        setState(
                                                            (){

                                                                /// Changing the state of the user's input
                                                                /// by capturing it.
                                                                start = controller.text;

                                                                /// Processing the input and converting
                                                                /// it.
                                                                result = processInput(mode, start);
                                                            }
                                                        );
                                                    }
                                                )
                                            )
                                        ),

                                        /// Button to process input.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new Container(
                                                width: double.infinity,
                                                child: new DollButton(
                                                    borderSize: stdBorderSize,
                                                    padding: stdPadding,
                                                    triggerText: process,
                                                    color: accentColor,
                                                    backgroundColor: mainColor,
                                                    fontSize: stdFontSize,
                                                    fontFamily: contentFont,
                                                    elevation: stdElevation,
                                                    callback: () => {
                                                        setState(
                                                            (){

                                                                /// Changing the state of the user's input
                                                                /// by capturing it.
                                                                start = controller.text;

                                                                /// Processing the input and converting
                                                                /// it.
                                                                result = processInput(mode, start);
                                                            }
                                                        )
                                                    }
                                                )
                                            )
                                        ),

                                        /// Button to switch input modes.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new Container(
                                            width: double.infinity,
                                            child: new DollButton(
                                                borderSize: stdBorderSize,
                                                padding: stdPadding,
                                                triggerText: modeSwitch,
                                                color: accentColor,
                                                backgroundColor: mainColor,
                                                fontSize: stdFontSize,
                                                fontFamily: contentFont,
                                                elevation: stdElevation,
                                                callback: () => {
                                                    setState(
                                                        (){

                                                            /// Updating the input mode's state.
                                                            mode = getNext(mode);
                                                        }
                                                    )
                                                }
                                            )
                                        )),

                                        /// Textual feedback widgets.
                                        new Padding(
                                            padding: EdgeInsets.only(
                                                top: stdPadding,
                                                bottom: nullPadding,
                                                left: nullPadding,
                                                right: nullPadding
                                            ),
                                            child: new DollContainer(
                                                width: double.infinity,
                                                color: mainColor,
                                                radius: stdFontSize,
                                                borderSize: stdBorderSize,
                                                borderColor: accentColor,
                                                child: new Padding(
                                                    padding: EdgeInsets.all(
                                                        stdPadding
                                                    ),
                                                    child:new Column(
                                                        children: <Widget> [

                                                            /// Echoing the mode.
                                                            new DollText(
                                                                content: 'Current mode: $mode',
                                                                color: accentColor,
                                                                fontSize: stdFontSize,
                                                                fontFamily: contentFont
                                                            ),

                                                            /// Putting out the output from the
                                                            /// conversion.
                                                            new DollText(
                                                                content: 'Result: $result',
                                                                color: accentColor,
                                                                fontSize: stdFontSize,
                                                                fontFamily: contentFont
                                                            )
                                                        ]
                                                    )
                                                )
                                            )
                                        ),



                                    ]
                                )
                            )


                        ]
                    )
                )
            )
        );
    }
}