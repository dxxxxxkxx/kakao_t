import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  final List<Widget> _banners = [
    // banners 1
    Stack(
      children: [
        // Stack 1
        Container(color: Colors.lightGreen),

        // Stack 2
        Container(
          padding: const EdgeInsets.only(left: 24.0, top: 24.0),
          alignment: Alignment.topLeft,
          child: FractionallySizedBox(
            widthFactor: 0.25,
            child: Image.asset('assets/images/ryan.png'),
          ),
        ),

        // Stack 3
        Container(
          padding: const EdgeInsets.only(right: 24.0, bottom: 24.0),
          alignment: Alignment.bottomRight,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Column 1
              FractionallySizedBox(
                widthFactor: 0.6,
                child: FittedBox(
                  child: Text(
                    '그러게 일찍 좀\n일어나지 그랬어',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Column 2
              Flexible(child: FractionallySizedBox(heightFactor: 0.1)),

              // Column 3
              FractionallySizedBox(
                widthFactor: 0.7,
                child: FittedBox(
                  child: Text(
                    '기왕 늦은거 편하게 택시타고 가자',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),

    // banners 2
    FractionallySizedBox(
      heightFactor: 1.0,
      child: Image.network(
        'https://kakaostyle.com/_next/static/images/fashionbykakao_og_banner-287d151c5f4da1605c94175cc4323950.jpg',
        fit: BoxFit.cover,
      ),
    )
  ];

  Banners({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _banners.length,
      itemBuilder: (context, index, realIndex) => Column(
        children: [
          Expanded(
            flex: 9,
            child: GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: _banners[index],
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${index + 1}/${_banners.length}',
              style: const TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: 16 / 10,
      ),
    );
  }
}
