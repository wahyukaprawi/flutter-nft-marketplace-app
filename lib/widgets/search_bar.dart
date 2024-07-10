import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: tdWhite,
                boxShadow: const [
                  BoxShadow(
                    color: tdShadow,
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Icon(
                      Icons.search,
                      color: tdGray,
                      size: 30,
                    ),
                  ),
                  const Text(
                    'Search...',
                    style: TextStyle(
                      color: tdGray,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: tdWhite,
                boxShadow: const [
                  BoxShadow(
                    color: tdShadow,
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: const Icon(
                Icons.manage_search_outlined,
                color: tdBlack,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
