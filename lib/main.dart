//import 'dart:convert';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String stringResponse = "null";
//Map<dynamic, dynamic> mapResponse = {0: 0};
//Map<dynamic, dynamic> dataResponse = {0: 0};

class _MyHomePageState extends State<MyHomePage> {
  /*Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(" https://reqres.in/api/users"));
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        // mapResponse = json.decode(response.body);
        // dataResponse = mapResponse['data'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    apicall();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fetch data from API"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Table(
            border: TableBorder.all(width: 2.0),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TableRow(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('id 1'),
                  Text('  id 2'),
                  Text('  id 3'),
                  Text('  id 4'),
                  Text('  id 5'),
                  Text('id 6'),
                ],
              ),
              TableRow(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('email'),
                  Text('email'),
                  Text('email'),
                  Text('email'),
                  Text('email'),
                  Text('email'),
                ],
              ),
              TableRow(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('first_name'),
                  Text('first_name'),
                  Text('first_name'),
                  Text('first_name'),
                  Text('first_name'),
                  Text('first_name'),
                ],
              ),
              TableRow(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('last_name'),
                  Text('last_name'),
                  Text('last_name'),
                  Text('last_name'),
                  Text('last_name'),
                  Text('last_name'),
                ],
              )
            ],
          ),
        ) // child: Center(child: Text(dataResponse['first_name'].toString())),

        );
  }
}
