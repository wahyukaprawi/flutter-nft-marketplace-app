import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_nft_marketplace_app/screens/detail_nft.dart';
import 'package:flutter_nft_marketplace_app/screens/dasboard.dart';
import 'package:flutter_nft_marketplace_app/providers/provider_nft.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderNFT(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Dasboard(),
          routes: {
            DetailNFT.nameRouted: (context) => const DetailNFT(),
          }),
    );
  }
}
