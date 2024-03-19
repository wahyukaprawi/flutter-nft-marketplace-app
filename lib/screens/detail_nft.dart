import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';
import 'package:flutter_nft_marketplace_app/widgets/detail_description.dart';
import 'package:flutter_nft_marketplace_app/widgets/detail_image.dart';
import '../widgets/button_bid.dart';
import '../widgets/detail_price.dart';

class DetailNFT extends StatefulWidget {
  static const nameRouted = '/detailnft';

  const DetailNFT({super.key});

  @override
  State<DetailNFT> createState() => _DetailNFTState();
}

class _DetailNFTState extends State<DetailNFT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tdBGColor,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: tdWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: tdShadow,
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
                splashRadius: 20,
              ),
            ),
          ],
        ),
        leadingWidth: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: tdWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: tdShadow,
                      blurRadius: 8,
                      spreadRadius: 0,
                    )
                  ]),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_balance_wallet_outlined,
                      color: tdBlack,
                    ),
                    splashRadius: 20,
                  ),
                  const Text(
                    '9.169 ETH',
                    style: TextStyle(fontSize: 12, color: tdBlack),
                  )
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: tdWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: tdShadow,
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: tdBlack,
                ),
                splashRadius: 20,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: const DetailImage(),
                )),
            Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const DetailDescription(),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const DetailPrice(),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 25),
                  child: const ButtonBid(),
                )),
          ],
        ),
      ),
    );
  }
}
