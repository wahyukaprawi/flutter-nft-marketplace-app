import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/models/item_nft.dart';

class ProviderNFT with ChangeNotifier {
  final List<ItemNFT> allItemNFT = itemNFTList;

  ItemNFT findById(nftIdList) =>
      allItemNFT.firstWhere((nftId) => nftId.id == nftIdList);
}
