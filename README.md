# progress_dialog

Helps developers improve user-experience using a progress indicator and a loading message.

## Getting Started
 ### Install
Add dependency to pubspec.yaml file :
`legacy_progress_dialog: 0.0.8`

Run this command :
`$ flutter pub get`

### Import
Import class in your project :
`import 'package:legacy_progress_dialog/legacy_progress_dialog.dart';`

### Show progress dialog :
<Img src="https://raw.githubusercontent.com/asadamatic/Progress-Dialog/master/open.png" align = "top" height = "350" height="300em" />

```
ProgressDialog progressDialog = ProgressDialog(
                  context: context,
                  backgroundColor: Colors.blue,
                  textColor: Colors.White,
                );

progressDialog.show(); // show dialog
progressDialog.dismiss(); //close dialog
```
