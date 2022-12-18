import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/Tehnik.dart';
import 'package:flutter_application_2/pages/home.page.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatelessWidget {
  final String tehnikid;

  ItemPage({Key key, this.tehnikid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final data =
        Provider.of<TehnikDataProvider>(context).getElementById(tehnikid);
    return Scaffold(
      appBar: AppBar(
        title: Text('Транспорт'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Hero(
              tag: data.avatar,
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(data.avatar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
              child: Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Информация',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 1.0,
                    ),
                    Column(
                      children: <Widget>[
                        MaterialButton(
                            child: Text(
                                'Российский многоцелевой автомобиль повышенной проходимости, бронеавтомобиль, армейский автомобиль-вседорожник.'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: ((context) => HomePage())),
                              );
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), // AppBar
    ); // Scaffold
  }
}
