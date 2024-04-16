import 'package:airbnb_app/components/home/home_body_popular_item.dart';
import 'package:airbnb_app/size.dart';
import 'package:airbnb_app/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPupularTitle(),
          _buildPupularList(),
        ],
      ),
    );
  }

  Widget _buildPupularTitle() {
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
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildPupularList() {
    /*
    전체 화면사이즈를 1000이라고 가정하고 이해를 해보자.
    _buildPopularList의 넓이는 화면의 70%이니까 700이다.
    HomeBodyPopularItem의 넓이는 700의 1/3 인 233.33 - 5 의 크기니까 총 228.33 이다.
    228.33 의 인기 아이템이 3개가 배치되면 684.99 크기이고 남은 크기는 15.01이 남는다.
    그래서 HomeBodyPopularItem 위젯 사이사이에 SizedBox를 7.5를 줄 수 있다.
     */
    return Wrap(
      children: [
        HomdBodyPopularItem(id: 0),
        SizedBox(width: 7.5),
        HomdBodyPopularItem(id: 1),
        SizedBox(width: 7.5),
        HomdBodyPopularItem(id: 2),
      ],
    );
  }
}
