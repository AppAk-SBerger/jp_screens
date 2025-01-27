import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard(
      {super.key,
      required this.imageAssetPath,
      required this.productName,
      required this.productDescription,
      required this.productPrice,
      required this.productLikes});

  final String imageAssetPath;
  final String productName;
  final String productDescription;
  final double productPrice;
  final int productLikes;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 200,
        child: Card(
          color: Color(0x00000000),
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Color(0x40FFFFFF),
                width: 1.5,
                style: BorderStyle.solid,
                strokeAlign: BorderSide.strokeAlignInside),
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          clipBehavior: Clip.hardEdge,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                Color(0x00FFFFFF),
                Color(0xFF908CF5),
                Color(0xFF8C5BEA),
              ], stops: [
                0.07,
                0.61,
                1.00
              ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(imageAssetPath)),
                Text(
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.5,
                    ),
                    "$productName"),
                Text(
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.5,
                    ),
                    "$productDescription\n"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 2,
                      children: [
                        SvgPicture.asset(
                            height: 13,
                            width: 13,
                            colorFilter: ColorFilter.mode(
                              Color(0xFFFFFFFF),
                              BlendMode.srcIn,
                            ),
                            'assets/icons/A.svg'),
                        Text(
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.5,
                          ),
                          '$productPrice',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 4,
                      children: [
                        SvgPicture.asset(
                            height: 13,
                            width: 13,
                            colorFilter: ColorFilter.mode(
                              Color(0xFFFFFFFF),
                              BlendMode.srcIn,
                            ),
                            'assets/icons/Heart.svg'),
                        Text(
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                          ),
                          '$productLikes',
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
