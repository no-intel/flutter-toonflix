import 'package:flutter/material.dart';
import 'package:toonflix/services/api_service.dart';

import '../models/webtoon_model.dart';
import '../widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    print(webtoons.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          centerTitle: true,
          elevation: 10,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "오늘의 웹툰",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                SizedBox(height: 50),
                Expanded(child: makeList(snapshot)),
              ],
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return WebtoonWidget(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => SizedBox(width: 40),
    );
  }
}
