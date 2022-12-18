import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/Tehnik.dart';
import 'package:flutter_application_2/pages/item_page.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tehnik = Provider.of<Tehnik>(context, listen: false);

    return Container(
      width: 150,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => ItemPage(
                        tehnikid: tehnik.id,
                      )),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(tehnik.avatar),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                    child: Text(
                  '${tehnik.firstName}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('${tehnik.kolichestvo}'),
                IconButton(onPressed: () {
                  Provider.of<TehnikDataProvider>(context, listen: false)
                      .addItem(
                    tehnikid: tehnik.id,
                    kolichestvo: tehnik.kolichestvo,
                    type: tehnik.type,
                    avatar: tehnik.avatar,
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
