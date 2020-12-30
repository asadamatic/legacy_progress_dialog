import 'package:flutter/material.dart';
import 'package:progress_dialog/legacy_progress_dialog.dart';

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
          brightness: Brightness.dark,
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: Center(
            child: FlatButton(
              child: Text('Show Progress Dialog'),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {

                ProgressDialog progressDialog = ProgressDialog(
                  context: context,
                  backgroundColor: Colors.blue,
                );

                progressDialog.show();
                Future.delayed(Duration(seconds: 3)).then((value) => progressDialog.dismiss());
              },
            )));
  }
}
