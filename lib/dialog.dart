import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayout();
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
        child : ElevatedButton (
        child: Text('Show alert'),
        onPressed: () {
        showAlertDialog(context);
       }
      )
    );
  }



showAlertDialog (BuildContext context) {
    Widget okButton = ElevatedButton (
    child : Text("OK"),
    onPressed : (){ },
  );


AlertDialog alert = AlertDialog(
  title:Text ('hello'),
  content: Text ("this ismy massage"),
  actions: [
    okButton,
  ],
);

showDialog (
  context : context,
  builder : (BuildContext context) {
    return alert;
  },
);
}
}