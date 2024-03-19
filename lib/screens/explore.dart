import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/widgets/gridview_item_nft.dart';
import 'package:flutter_nft_marketplace_app/widgets/search_bar.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: const SearchBar(),
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Explore',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 15,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const GridViewItem(),
              ))
        ],
      ),
    );
  }
}
