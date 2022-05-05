import 'package:flutter/material.dart';
import 'package:student_info/form_widgets.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key? key}) : super(key: key);

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  var _character;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text('Gender:'),
        RadioListTile<String>(
          title: const Text('Male'),
          value: 'Male',
          groupValue: _character,
          onChanged: (value) {
            setState(() {
              _character = value;
              gender = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Female'),
          value: 'Female',
          groupValue: _character,
          onChanged: (value) {
            setState(() {
              _character = value;
              gender = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Other'),
          value: 'Other',
          groupValue: _character,
          onChanged: (value) {
            setState(() {
              _character = value;
              gender = value!;
            });
          },
        ),
      ],
    );
  }
}
