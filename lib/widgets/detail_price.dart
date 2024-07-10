import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';
import 'package:flutter_nft_marketplace_app/providers/provider_nft.dart';

class DetailPrice extends StatelessWidget {
  const DetailPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final nftIdList = ModalRoute.of(context)!.settings.arguments;
    final nft = Provider.of<ProviderNFT>(context).findById(nftIdList);

    return Container(
      decoration: BoxDecoration(
          color: tdWhite,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: tdShadow,
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(0, 2))
          ]),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 15, top: 10),
                    child: const Text(
                      'Current Bid',
                      style: TextStyle(color: tdSilver, fontSize: 12),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 15),
                    child: Text(
                      nft.price,
                      style: const TextStyle(
                          color: tdBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 15, top: 7),
                      child: const Text(
                        'Auction ending in',
                        style: TextStyle(color: tdSilver, fontSize: 12),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              '9',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              '58',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Days',
                              style: TextStyle(fontSize: 12, color: tdSilver),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Hours',
                              style: TextStyle(fontSize: 12, color: tdSilver),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Minutes',
                              style: TextStyle(fontSize: 12, color: tdSilver),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Seconds',
                              style: TextStyle(fontSize: 12, color: tdSilver),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
