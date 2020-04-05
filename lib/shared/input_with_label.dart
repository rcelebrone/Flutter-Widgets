import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'padding_label_with_widget.dart';

class InputWithLabel extends StatelessWidget {

  final Widget label;
  final String labelText;
  final TextEditingController controller;
  final TextInputType type;
  final String hint;
  final bool isRequired;
  InputWithLabel({Key key, @required this.label, @required this.controller, this.type = TextInputType.text, this.hint = "", this.labelText, this.isRequired = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PaddingLabelWithWidget(
      label: this.label,
      child: Flexible(
          child: TextFormField(
            style: TextStyle(
              fontSize: 18,
              height: 2,
              color: Colors.black
            ),
            keyboardType: this.type,
            controller: this.controller,
            decoration: InputDecoration(
              hintText: this.hint,
              labelText: this.labelText
            ),
            validator: (value) {
              if (this.isRequired && value.isEmpty) {
                return 'Campo obrigatório';
              }
              return null;
            }
          )
        )
    );
  }
}
