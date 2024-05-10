// ignore_for_file: prefer_const_constructors

import 'package:dars33/pages/admin_page.dart';
import 'package:dars33/widgets/user_card.dart';
import 'package:dars33/widgets/users_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() {
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("33-Dars"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return AdminPage();
                  },
                ),
              );
            },
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
