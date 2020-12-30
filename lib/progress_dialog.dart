library progress_dialog;

// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ProgressDialog extends StatelessWidget {

  final String loadingText;
  final Color backgroundColor, textColor, progressIndicatorColor;
  final LinearGradient linearGradient;
  final String assetImageName, networkImageUrl;

  ProgressDialog({this.loadingText = 'Loading...', @required this.backgroundColor, this.textColor = Colors.white, this.linearGradient, this.assetImageName, this.networkImageUrl, this.progressIndicatorColor = Colors.white}) :

        assert(backgroundColor != null || linearGradient != null, 'This widget either needs a background color or background linear gradient\n'),

        assert(backgroundColor == null || linearGradient == null, 'Cannot provide both a backgroundColor and a linearGradient\n'),

        assert(assetImageName == null || networkImageUrl == null, 'Cannot provide both a assetImageName and a networkImageUrl\n'),

        assert(loadingText.length <= 55 , 'Loading text should not be more than 50 characters\n');

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(12.0),
              gradient: linearGradient,
            ),
            child: Row(
              children: [
                Stack(
                  fit: StackFit.passthrough,
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          image: AssetImage('Assets/Images/mission.png'),
                          fit: BoxFit.contain,
                          height: 22.5,
                          width: 22.5,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        backgroundColor: progressIndicatorColor,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('${loadingText ?? ''}', style: TextStyle(letterSpacing: .9, color: textColor, fontSize: 16.0),),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
