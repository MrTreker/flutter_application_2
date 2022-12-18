import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/Tehnik.dart';
import 'package:flutter_application_2/pages/home.page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TehnikDataProvider>(
          create: (context) => TehnikDataProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Учет военной техники',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          backgroundColor: Color.fromARGB(255, 101, 101, 101),
          textTheme: Theme.of(context).textTheme,
        ),
        home: HomePage(),
      ),
    );
  }
}
