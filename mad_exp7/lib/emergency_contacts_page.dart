// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class EmergencyContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contacts'),
      ),
      body: Center(
        child: Text(
          'Emergency Contacts Page Content',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
