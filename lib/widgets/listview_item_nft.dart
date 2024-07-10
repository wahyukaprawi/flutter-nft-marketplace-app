import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';
import 'package:flutter_nft_marketplace_app/models/item_nft.dart';
import 'package:flutter_nft_marketplace_app/screens/detail_nft.dart';

class ListViewItem extends StatefulWidget {
  const ListViewItem({super.key});

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final ItemNFT nft = itemNFTList[index];
        return InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(DetailNFT.nameRouted, arguments: nft.id);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
            child: Column(
              children: [
                Container(
                  height: 375,
                  width: double.infinity,
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
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: tdBlack,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(nft.image),
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: tdRed.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          nft.isFavorite = !nft.isFavorite;
                                        });
                                      },
                                      icon: Icon(
                                        nft.isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_outline,
                                        size: 20,
                                        color: tdRed,
                                      ),
                                      padding: const EdgeInsets.all(0),
                                      splashRadius: 15,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: tdSilver.withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          '09',
                                          style: TextStyle(
                                              color: tdWhite,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: tdSilver.withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(left: 5),
                                        child: const Text(
                                          '13',
                                          style: TextStyle(
                                              color: tdWhite,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: tdSilver.withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(left: 5),
                                        child: const Text(
                                          '47',
                                          style: TextStyle(
                                              color: tdWhite,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.only(left: 20),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  nft.title,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: CircleAvatar(
                                              backgroundImage:
                                                  AssetImage(nft.imageprofile),
                                              radius: 20,
                                              child: Image(
                                                  image: AssetImage(
                                                      nft.imageprofile)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: const Text(
                                                      'Owned by',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: tdSilver),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 3),
                                                    child: Text(
                                                      nft.name,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      maxLines: 1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: CircleAvatar(
                                              child: Image(
                                                  image:
                                                      AssetImage(nft.imagebid)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: const Text(
                                                      'Current Bid',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: tdSilver),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 3),
                                                    child: Text(
                                                      nft.price,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: itemNFTList.length,
    );
  }
}
