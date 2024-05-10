// ignore_for_file: prefer_const_constructors

import 'package:dars33/widgets/user_card.dart';
import 'package:dars33/widgets/users_list.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  @override
  State<AdminPage> createState() {
    return _AdminPageState();
  }
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("33-Dars"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            UsersList(),
          ],
        ),
      ),
    );
  }
}
