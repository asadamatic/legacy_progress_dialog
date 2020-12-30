import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';


class ExampleScreen extends StatefulWidget {
  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          child: Text('Show Progress Dialog'),
          onPressed: (){
            showDialog(context: context,
              barrierDismissible: false,
              builder: (BuildContext context){
                return WillPopScope(
                  onWillPop: () async => false,
                  child: ProgressDialog(
                    loadingText: "Progress Dialog...",
                    linearGradient: LinearGradient(colors: [Colors.black, Colors.blue]),
                  ),
                );
              },
            );

            Future.delayed(Duration(milliseconds: 5000)).then((value) => Navigator.pop(context));

          },
        ),
      ),
    );
  }
}
