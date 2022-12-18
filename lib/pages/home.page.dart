import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/Tehnik.dart';
import 'package:flutter_application_2/widgets/item.card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tehnikData = Provider.of<TehnikDataProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height - 85,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 100, 96, 96),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                )),
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: <Widget>[
                Container(
                  child: ListTile(
                    title: Text(
                      'Военная техника',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  height: 290,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tehnikData.items.length,
                      itemBuilder: (context, int index) =>
                          ChangeNotifierProvider.value(
                            value: tehnikData.items[index],
                            child: ItemCard(),
                          )),
                ),
              ],
            )),
      ),
      //bottombar
    );
  }
}
