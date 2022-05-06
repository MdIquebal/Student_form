import 'package:flutter/material.dart';
import 'package:student_info/form_widgets.dart';

class DateOfBirthWidget extends StatefulWidget {
  const DateOfBirthWidget({Key? key}) : super(key: key);

  @override
  State<DateOfBirthWidget> createState() => _DateOfBirthWidgetState();
}

class _DateOfBirthWidgetState extends State<DateOfBirthWidget> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controllerAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextFormField(
        focusNode: AlwaysDisabledFocusNode(),
        controller: _controller,
        onChanged: (value) async {
          setState(() {
            birthDate = value;
          });
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'Date of Birth is Required';
          }

          return null;
        },
        decoration: const InputDecoration(
          suffixIcon: Icon(
            Icons.calendar_today,
            color: Colors.black,
          ),
          labelText: 'Date of Birth',
        ),
        onTap: () => showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950, 1),
            lastDate: DateTime.now(),
            builder: (context, picker) {
              return Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Colors.blue,
                    onPrimary: Colors.black,
                    surface: Colors.blue,
                    onSurface: Colors.black,
                  ),
                  dialogBackgroundColor: Colors.white,
                ),
                child: picker!,
              );
            }).then(
          (selectedDate) async {
            if (selectedDate != null) {
              _controller.text = selectedDate.toString().split(' ')[0];
              setState(() {
                birthDate = _controller.text;
              });

              DateTime birthDate2 = selectedDate;

              DateTime currentDate = DateTime.now();
              int age = currentDate.year - birthDate2.year;
              int month1 = currentDate.month;
              int month2 = birthDate2.month;
              if (month2 > month1) {
                age--;
              } else if (month1 == month2) {
                int day1 = currentDate.day;
                int day2 = birthDate2.day;
                if (day2 > day1) {
                  age--;
                }
              }

              // Find out your age
              _controllerAge.text = age.toString();
            }
          },
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
