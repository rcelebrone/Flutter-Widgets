import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'padding_label_with_widget.dart';

class DropWithLabel extends StatelessWidget {

  final Widget label;
  final String value;
  final List<String> options;
  final Function onChanged;
  DropWithLabel({Key key, @required this.label, @required this.value, @required this.options, @required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PaddingLabelWithWidget(
      label: this.label,
      textPadding: EdgeInsets.only(top: 14, right: 10),
      child: DropdownButton<String>(
        value: this.value,
        icon: Icon(Icons.arrow_downward, size: 20),
        hint: Text("-- selecione --"),
        iconSize: 25,
        elevation: 16,
        style: TextStyle(
            fontSize: 20,
            color: Colors.black
        ),
        underline: Container( height: 0 ),
        onChanged: (String newValue) => this.onChanged(newValue),
        items: this.options.map<DropdownMenuItem<String>>((String value) =>
            DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            )
        ).toList(),
      ),
    );
  }

}
