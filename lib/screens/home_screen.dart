import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreenAppBar extends StatefulWidget {
  const HomeScreenAppBar({super.key});

  @override
  State<HomeScreenAppBar> createState() => _HomeScreenAppBarState();
}

class _HomeScreenAppBarState extends State<HomeScreenAppBar> {
  List<webtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebtoons() async {
    // why async ? because we have to wait for the function that wait for the http request.
    webtoons = await ApiService
        .getTodaysToons(); // waits for something when that finishes,

    isLoading = false;
    setState(() {
      // it could be empty. doesn't matter
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    waitForWebtoons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "어늘의 웹툰",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
