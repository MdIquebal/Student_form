import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:student_info/date_of_birth_widget.dart';
import 'package:student_info/gender_widget.dart';
import 'package:student_info/religion_widget.dart';
import 'form_widgets.dart';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Student Info Form")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildName(),
                buildFather(),
                buildMother(),
                buildBirth(),
                DateOfBirthWidget(),
                GenderWidget(),
                ReligionWidget(),
                buildNationality(),
                buildStudy(),
                buildPresAddress(),
                buildPerAddress(),
                buildPhoneNumber(),
                buildEmail(),
                SizedBox(height: 100),
                RaisedButton(
                  color: Colors.teal,
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () async {
                    if (!formKey.currentState!.validate()) {
                      return;
                    }

                    formKey.currentState!.save();

                    print('name: ${name}');
                    print('father\'s name: ${father}');
                    print('mother\' name: ${mother}');
                    print('birth: ${birth}');
                    print('birthdate: ${birthDate}');
                    print('gender: ${gender}');
                    print('religion: ${religion}');
                    print('nationality: ${nationality}');
                    print('study: ${study}');
                    print('presAddress: ${presAddress}');
                    print('perAddress: ${perAddress}');
                    print('phone: ${phoneNumber}');
                    print('email: ${email}');

                    //Send to API
                    var res = await http.post(
                        Uri.parse("http://192.168.223.121:8080/contacts"),
                        headers: {'content-Type': 'application/json'},
                        body: json.encode({
                          'name': name,
                          'father': father,
                          'mother': mother,
                          'birth': birth,
                          'birthDate': birthDate,
                          'gender': gender,
                          'religion': religion,
                          'nationality': nationality,
                          'study': study,
                          'presAddress': presAddress,
                          'perAddress': perAddress,
                          'phone': phoneNumber,
                          'email': email,
                        }));
                    print('res.body: ${res.body}');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}