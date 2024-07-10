import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';
import 'package:flutter_nft_marketplace_app/models/item_nft.dart';
import 'package:flutter_nft_marketplace_app/screens/detail_nft.dart';

class GridViewItem extends StatefulWidget {
  const GridViewItem({super.key});

  @override
  State<GridViewItem> createState() => _GridViewItem();
}

class _GridViewItem extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisExtent: 250,
      ),
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
                  height: 230,
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Hero(
                                tag: nft,
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: tdRed.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    alignment: Alignment.topLeft,
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
                                        size: 15,
                                        color: tdRed,
                                      ),
                                      padding: const EdgeInsets.all(0),
                                      splashRadius: 15,
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: tdSilver.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Icon(
                                      Icons.more_vert_outlined,
                                      size: 15,
                                      color: tdBGColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
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
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  nft.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 3),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        nft.price,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: tdCyan),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 20, left: 10, right: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: tdCyan.withOpacity(0.2),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          nft.category,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: tdCyan,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
