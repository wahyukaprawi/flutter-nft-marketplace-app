import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';
import 'package:flutter_nft_marketplace_app/screens/explore.dart';
import 'package:flutter_nft_marketplace_app/screens/home.dart';
import 'package:flutter_nft_marketplace_app/screens/market.dart';
import 'package:flutter_nft_marketplace_app/screens/profile.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentTab = 0;
  Widget currentScreens = const Dasboard();

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const Home(),
      const Explore(),
      const Market(),
      const Profile(),
    ];
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
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
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(
                  Icons.menu_outlined,
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
                  Icons.notifications_none_outlined,
                  color: tdBlack,
                ),
                splashRadius: 20,
              ),
            ),
            const SizedBox(width: 10),
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
                ],
              ),
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
                    style: TextStyle(
                      fontSize: 12,
                      color: tdBlack,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: screens[currentTab],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 96,
        color: tdBGColor,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentScreens = const Dasboard();
                        currentTab = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home_outlined,
                      color: currentTab == 0 ? tdCyan : tdGray,
                    ),
                    splashRadius: 20,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                      color: currentTab == 0 ? tdCyan : tdGray,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentScreens = const Explore();
                            currentTab = 1;
                          });
                        },
                        icon: Icon(
                          Icons.explore_outlined,
                          color: currentTab == 1 ? tdCyan : tdGray,
                        ),
                        splashRadius: 20,
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 12,
                          color: currentTab == 1 ? tdCyan : tdGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 48,
                  ),
                  Text(
                    'Swap',
                    style: TextStyle(
                      fontSize: 12,
                      color: tdGray,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentScreens = const Market();
                        currentTab = 2;
                      });
                    },
                    icon: Icon(
                      Icons.pie_chart_outline_outlined,
                      color: currentTab == 2 ? tdCyan : tdGray,
                    ),
                    splashRadius: 20,
                  ),
                  Text(
                    'Market',
                    style: TextStyle(
                      fontSize: 12,
                      color: currentTab == 2 ? tdCyan : tdGray,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentScreens = const Profile();
                      currentTab = 3;
                    });
                  },
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: currentTab == 3 ? tdCyan : tdGray,
                  ),
                  splashRadius: 20,
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 12,
                    color: currentTab == 3 ? tdCyan : tdGray,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tdCyan,
          elevation: 0,
          child: const Icon(
            Icons.swap_vert_rounded,
            size: 35,
            color: tdBGColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
