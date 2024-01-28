import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreenAppBar extends StatelessWidget {
  HomeScreenAppBar({super.key});

  final Future<List<webtoonModel>> webtoons = ApiService.getTodaysToons();

  // List<webtoonModel> webtoons = [];

  // bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    print(webtoons);

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
        // FutureBuilder : awaiting widget
        body: FutureBuilder(
          future: webtoons,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(child: makeList(snapshot)),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }

  ListView makeList(AsyncSnapshot<List<webtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        print(index);
        var webtoon = snapshot.data![index];
        return Column(
          children: [
            Image.network(
              webtoon.thumb,
              // 403 error 대응. header 추가. or httpOverrides 로 추가
              /*
              headers: const {
                "User-Agent":
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              },*/
            ),
            Text(webtoon.title),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
