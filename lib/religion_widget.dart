import 'package:flutter/material.dart';
import 'package:student_info/form_widgets.dart';

class ReligionWidget extends StatefulWidget {

  @override
  State<ReligionWidget> createState() => _ReligionWidgetState();
}

class _ReligionWidgetState extends State<ReligionWidget> {
  var _character;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text('Religion'),
        RadioListTile<String>(
          title: const Text('Islam'),
          value: 'Islam',
          groupValue: _character,
          onChanged: (value) {
            setState(() {
              _character = value;
              religion = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Hindu'),
          value: 'Hindu',
          groupValue: _character,
          onChanged: (value) {
            setState(() {
              _character = value;
              religion = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Cristian'),
          value: 'Cristian',
          groupValue: _character,
          onChanged: (value) {
            setState(() {
              _character = value;
              religion = value!;
            });
          },
        ),RadioListTile<String>(
          title: const Text('Buddhist'),
          value: 'Buddhist',
          groupValue: _character,
          onChanged: (value) {
            setState(() {
              _character = value;
              religion = value!;
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
              religion = value!;
            });
          },
        ),
      ],
    );
  }
}
