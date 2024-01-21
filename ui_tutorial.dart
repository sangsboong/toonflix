import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currentcy_card.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // backgroundColor: Colors.black,
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            // 없을 떄 overflowing 상태로 표시됨
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // Row 의 mainAxis는 수평방향
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.end, // Column 의 crossAxis는 수평방향
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text('Total Balance',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white.withOpacity(0.8),
                      )),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text('\$5 194 482',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    cardOrder: 0,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    cardOrder: 1,
                  ),
                  const CurrencyCard(
                    name: 'Dallar ',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    cardOrder: 2,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
