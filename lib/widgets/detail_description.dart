import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';
import 'package:flutter_nft_marketplace_app/providers/provider_nft.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final nftIdList = ModalRoute.of(context)!.settings.arguments;
    final nft = Provider.of<ProviderNFT>(context).findById(nftIdList);
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 24,
                        child: Image(image: AssetImage(nft.imageprofile)),
                      )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                'Owned By',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: tdSilver,
                                ),
                              ),
                            )),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(top: 3),
                                child: Text(
                                  nft.name,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          nft.title,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Expanded(
                    flex: 5,
                    child: Text(
                      nft.description,
                      style: const TextStyle(
                        height: 1.5,
                        fontSize: 15,
                        color: tdSilver,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
