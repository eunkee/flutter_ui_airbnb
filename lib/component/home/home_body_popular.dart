import 'package:flutter/material.dart';
import 'package:flutter_ui_airbnb/component/home/home_body_popular_item.dart';
import 'package:flutter_ui_airbnb/size.dart';
import 'package:flutter_ui_airbnb/style.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // 상단에 마진
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text(
          "한국 숙소에 직접 다녀간 게스트의 후기",
          style: h5(),
        ),
        Text(
          "게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)",
          style: body1(),
        ),
        const SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildPopularList() {
    // 전체 화면사이즈를 1000이라고 가정
    // _buildPopularList의 넓이는 70%니까 700
    // HomeBodyPopularItem의 넓이는 700의 1/3인 233.33 - 5의 크기니까 228.33 이다.
    // 228.33 의 인기아이템이 3개가 배치되면 684.99의 크기이고 남은 크기가 15.01이다.
    // HomeBodyPopularItem 위젯 사이는 2개라 SizedBox를 7.5씩 주면 맞게된다.
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0), // 사진을 선택하기 위해 id 값이 필요
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
