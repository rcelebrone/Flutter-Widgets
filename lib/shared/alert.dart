import 'package:flutter/material.dart';

class Alert {

  BuildContext _context;

  Alert(BuildContext context){
    this._context = context;
  }

  alertInfo(String title, String msg1) {
    return showDialog<void>(
      context: this._context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[ Text(msg1) ],
            ),
          ),
          actions: <Widget>[
            FlatButton( child: Text('Ok'), onPressed: () => Navigator.of(context).pop() )
          ],
        );
      },
    );
  }
}