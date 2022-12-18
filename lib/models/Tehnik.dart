import 'dart:collection';

import 'package:flutter/foundation.dart';

class Tehnik with ChangeNotifier {
  final String id;
  final String firstName;
  final String kolichestvo;
  final String type;
  final String avatar;

  Tehnik({
    this.id,
    this.firstName,
    this.kolichestvo,
    this.type,
    this.avatar,
  });

  String get title => null;
}

class TehnikDataProvider with ChangeNotifier {
  List<Tehnik> _items = [
    Tehnik(
      id: '1',
      firstName: '"Тигр"',
      kolichestvo: '15',
      type: 'Бронеавтомобиль',
      avatar:
          'https://mirmodelista.ru/wa-data/public/shop/products/71/74/127471/images/66174/66174.750x0.jpg',
    ),
    Tehnik(
      id: '2',
      firstName: '"Рысь"',
      kolichestvo: '20',
      type: 'Бронеавомобиль',
      avatar:
          'https://avatars.mds.yandex.net/i?id=3e8b3961febc679aa503af8be2fc1ea3ce7b3939-8209733-images-thumbs&n=13',
    ),
    Tehnik(
      id: '3',
      firstName: '"Терминатор"',
      kolichestvo: '15',
      type: 'Поддержка танков',
      avatar:
          'https://avatars.mds.yandex.net/i?id=2a0000018513b4158196070dda9c5fa15299-1386561-fast-images&n=13',
    ),
    Tehnik(
      id: '4',
      firstName: 'Т-80У',
      kolichestvo: '5',
      type: 'Танк',
      avatar: '42.webp',
    ),
    Tehnik(
      id: '5',
      firstName: 'Т-90М',
      kolichestvo: '10',
      type: 'Танк',
      avatar: '',
    ),
  ];
  UnmodifiableListView<Tehnik> get items => UnmodifiableListView(_items);

  get tehnikItems => null;

  get totalAmount => null;
  Tehnik getElementById(String id) =>
      _items.singleWhere((value) => value.id == id);

  void addItem(
      {String tehnikid, String kolichestvo, String type, String avatar}) {}
}
