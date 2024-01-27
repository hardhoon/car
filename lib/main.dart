import 'package:carnews/cards/maincard.dart';
import 'package:carnews/cards/maincard2.dart';
import 'package:carnews/cards/maincard3.dart';
import 'package:carnews/cards/maincard4.dart';
import 'package:carnews/cards/maincard5.dart';
import 'package:carnews/cards/subcard.dart';
import 'package:carnews/cards/subcard2.dart';
import 'package:carnews/cards/subcard3.dart';
import 'package:carnews/cards/subcard4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var defaultTabController = DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Home')),
              Tab(child: Text('Technology')),
              Tab(child: Text('Sport')),
              Tab(child: Text('Travel')),
              Tab(child: Text('Service')),
              Tab(child: Text('Car/Bike')),
            ],
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelStyle: const TextStyle(fontSize: 20, color: Colors.black),
            unselectedLabelStyle:
                TextStyle(fontSize: 30, color: Colors.grey[500]!),
            indicatorColor: Colors.black,
          ),
          leading: const Icon(
            Icons.menu,
            color: Colors.grey,
            size: 40,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                color: Colors.grey,
                size: 40,
              ),
            )
          ],
          title: const Text('hello world!'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontFamily: 'Jalnan', fontSize: 30, color: Colors.black),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: const MyHomePage(),
      ),
    );
    return MaterialApp(
      home: defaultTabController,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Featured News',
                    style: TextStyle(fontSize: 23),
                  ),
                  Spacer(),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MainCard(),
                    MainCard2(),
                    MainCard3(),
                    MainCard4(),
                    MainCard5(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      'Recent News',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SubCard(),
                  SubCard2(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SubCard3(),
                  SubCard4(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
