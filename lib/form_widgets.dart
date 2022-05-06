import 'package:flutter/material.dart';

String name = '';
String father = '';
String mother = '';
String birth = '';
String birthDate = '';
String gender = '';
String religion = '';
String nationality = '';
String study = '';
String presAddress = '';
String perAddress = '';
String phoneNumber = '';
String email = '';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

Widget buildName() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Student\'s Name'),
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      name = value!;
    },
  );
}

Widget buildFather() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Father\'s Name'),
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      father = value!;
    },
  );
}

Widget buildMother() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Mother\'s Name'),
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      mother = value!;
    },
  );
}

Widget buildNationality() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Nationality'),
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Nationality is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      nationality = value!;
    },
  );
}

Widget buildBirth() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Birth Registration No.'),
    keyboardType: TextInputType.number,
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Number is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      birth = value!;
    },
  );
}

Widget buildBirthDate() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Date of Birth'),
    keyboardType: TextInputType.datetime,
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Date is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      birthDate = value!;
    },
  );
}

Widget buildStudy() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Class'),
    keyboardType: TextInputType.visiblePassword,
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Class is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      study = value!;
    },
  );
}

Widget buildPresAddress() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Present Address',
    ),
    keyboardType: TextInputType.text,
    maxLines: 3,
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Address is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      presAddress = value!;
    },
  );
}

Widget buildPerAddress() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Permanent Address'),
    keyboardType: TextInputType.text,
    maxLines: 3,
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Address is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      perAddress = value!;
    },
  );
}

Widget buildPhoneNumber() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Phone number'),
    keyboardType: TextInputType.phone,
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Phone number is Required';
      }

      return null;
    },
    onSaved: (String? value) {
      phoneNumber = value!;
    },
  );
}

Widget buildEmail() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Email'),
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'Email is Required';
      }

      if (!RegExp(
              r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
          .hasMatch(value)) {
        return 'Please enter a valid email Address';
      }

      return null;
    },
    onSaved: (String? value) {
      email = value!;
    },
  );
}
