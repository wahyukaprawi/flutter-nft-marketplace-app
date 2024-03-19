import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/widgets/listview_item_nft.dart';
import 'package:flutter_nft_marketplace_app/widgets/tabbar_category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const TabbarCategory(),
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Top Pick',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 15,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const ListViewItem(),
              ))
        ],
      ),
    );
  }
}
