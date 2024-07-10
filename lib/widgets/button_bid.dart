import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';

class ButtonBid extends StatelessWidget {
  const ButtonBid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: tdCyan,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: tdCyan.withOpacity(0.5),
              blurRadius: 6,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            )
          ]),
      child: const Text(
        "\$ Place Bid Now",
        style: TextStyle(
            color: tdBGColor, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
