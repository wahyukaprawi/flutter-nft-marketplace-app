import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';
import 'package:flutter_nft_marketplace_app/providers/provider_nft.dart';

class DetailImage extends StatefulWidget {
  const DetailImage({super.key});

  @override
  State<DetailImage> createState() => _DetailImageState();
}

class _DetailImageState extends State<DetailImage> {
  @override
  Widget build(BuildContext context) {
    final nftIdList = ModalRoute.of(context)!.settings.arguments;
    final nft = Provider.of<ProviderNFT>(context).findById(nftIdList);
    return Column(
      children: [
        Container(
          height: 315,
          alignment: Alignment.center,
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
          child: Stack(
            children: [
              Hero(
                tag: nft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(nft.image),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            color: tdSilver.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            nft.category,
                            style: const TextStyle(
                              color: tdBGColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
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
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 55,
                    decoration: BoxDecoration(
                      color: tdBlack.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.play_arrow_outlined,
                          size: 30,
                          color: tdBGColor,
                        ),
                        Container(
                          height: 5,
                          width: 220,
                          decoration: BoxDecoration(
                            color: tdSilver.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(right: 75),
                            width: 20,
                            decoration: BoxDecoration(
                              color: tdBGColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: const Icon(
                                Icons.volume_off_outlined,
                                size: 25,
                                color: tdBGColor,
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: const Icon(
                                Icons.fullscreen_exit_outlined,
                                size: 25,
                                color: tdBGColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
