import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:vector_math/vector_math.dart';

import 'package:jp_screens/recommended_card.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            // background
            SizedBox(
              height: double.infinity,
              child: Image(
                image: AssetImage('assets/backgrounds/bg_mainscreen.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
            DefaultTabController(
              length: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: AppBar(
                  automaticallyImplyLeading: false,
                  forceMaterialTransparency: true,
                  leadingWidth: double.infinity,
                  // toolbarHeight: (screenHeight / 6),
                  leading: Text(
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -1,
                        height: 1.0,
                      ),
                      'Choose Your Favorite\nSnack'),
                ),
              ),
            ),
            Positioned(
              top: (screenHeight / 6),
              // left: -50,
              child: SizedBox(
                width: screenWidth /* + 50 */,
                child: TabBar(
                  isScrollable: true,
                  dividerColor: Color(0x00000000),
                  dividerHeight: 0,
                  indicatorColor: Color(0x00000000),
                  labelPadding: EdgeInsets.only(right: 8, left: 0),
                  tabs: [
                    Tab(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: SvgPicture.asset(
                                  height: 13,
                                  width: 13,
                                  colorFilter: ColorFilter.mode(
                                    Color(0xFF9E9E9E),
                                    BlendMode.srcIn,
                                  ),
                                  'assets/icons/Lunch.svg'),
                            ),
                            Text(
                              style: TextStyle(color: Color(0xFF9E9E9E)),
                              'All Categories',
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Icon(
                                size: 13,
                                color: Color(0xFF9E9E9E),
                                Icons.keyboard_arrow_down,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              style: TextStyle(color: Color(0xFF9E9E9E)),
                              'Salty',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              style: TextStyle(color: Color(0xFF9E9E9E)),
                              'Sweet',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              style: TextStyle(color: Color(0xFF9E9E9E)),
                              'Drinks',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top: 300,
            //   child: Transform(
            //     alignment: Alignment.topCenter,
            //     transform: Matrix4.identity()
            //       ..setEntry(3, 2, 0.005)
            //       ..rotateY(-.4),
            //     child: Container(
            //       height: 100,
            //       width: 200,
            //       color: Color(0xFFFFFFFF),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: 450,
            //   child: Transform(
            //     transform: Matrix4(
            //       1, // 0 0
            //       0, // 0 1
            //       0, // 0 2
            //       0, // 0 3
            //       0, // 1 0
            //       1, // 1 1
            //       0, // 1 2
            //       0, // 1 3
            //       0, // 2 0
            //       0, // 2 1
            //       1, // 2 2
            //       0, // 2 3
            //       0, // 3 0
            //       0, // 3 1
            //       0, // 3 2
            //       1, // 3 3
            //     )
            //       ..setEntry(3, 2, 0.01)
            //       ..rotateY(-.4),
            //     child: Container(
            //       height: 100,
            //       width: 100,
            //       color: Color(0xFFFFFFFF),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: screenHeight * 0.27,
            //   child: Card(
            //     shape: RoundedRectangleBorder(
            //       side: BorderSide(
            //         color: Color(0x33FFFFFF),
            //         width: 1.5,
            //         style: BorderStyle.solid,
            //         strokeAlign: BorderSide.strokeAlignInside,
            //       ),
            //       borderRadius: BorderRadius.all(Radius.circular(32)),
            //     ),
            //     clipBehavior: Clip.hardEdge,
            //     color: Color(0x33FFFFFF),
            //     child: BackdropFilter(
            //       filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            //       child: Padding(
            //         padding: EdgeInsets.all(16),
            //         child: Opacity(
            //           opacity: 0.2,
            //           child: Image(
            //             image: AssetImage('assets/details/cut_card.png'),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              top: screenHeight * 0.27,
              child: Opacity(
                opacity: 0.5,
                child: Image(
                  image: AssetImage('assets/details/cut_card.png'),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.29,
              left: screenWidth * 0.12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                            color: Color(0xFFFFFFFF),
                          ),
                          "Angi's Yummy Burger"),
                      Text(
                          style: TextStyle(
                            letterSpacing: -0.5,
                            color: Color(0xFFFFFFFF),
                          ),
                          "Delish vegan burger\nthat tastes like heaven"),
                      Row(
                        spacing: 4,
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
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFF),
                              ),
                              '13.99')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            // Add to order button
            Positioned(
              top: screenHeight * 0.45,
              left: screenWidth * 0.1,
              child: Container(
                width: 96,
                height: 44,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.srcOver,
                  gradient: RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 2,
                    colors: [
                      const Color(0xFF908CF5),
                      const Color(0xFFBB8DE1),
                    ],
                    stops: [0.0, 1.0],
                  ),
                  boxShadow: [
                    //inner shadow
                    BoxShadow(
                        color: const Color(0xFF9375B6),
                        offset: Offset(0, -3),
                        blurRadius: 24,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.solid),
                    // inner shadow
                    BoxShadow(
                      color: const Color(0xFFFFACE4),
                      offset: Offset(0, 0),
                      blurRadius: 15,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.solid,
                    ),
                    // drop shadow
                    BoxShadow(
                      color: const Color(0x80EA71C5),
                      offset: Offset(0, 30),
                      blurRadius: 90,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.inner,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                        style: TextStyle(fontSize: 13, color: Color(0xFFFFFFFF)), 'Add to otder')),
              ),
            ),
            // burger-image
            Positioned(
              top: screenHeight * 0.3,
              left: screenWidth * 0.4,
              child: Image(
                height: 225,
                width: 225,
                image: AssetImage('assets/images/burger.png'),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -1,
                          height: 1.0,
                        ),
                        'We Recommend'),
                  ),
                  SizedBox(
                    height: screenHeight * 0.4,
                    width: screenWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 8,
                        children: [
                          RecommendedCard(
                              imageAssetPath: "assets/images/cupcake_cat.png",
                              productName: "Mogli's Cup",
                              productDescription: "Strawberry ice cream",
                              productPrice: 8.99,
                              productLikes: 200),
                          RecommendedCard(
                              imageAssetPath: "assets/images/icecream.png",
                              productName: "Balu's Cup",
                              productDescription: "Pistachio ice cream",
                              productPrice: 8.99,
                              productLikes: 175),
                          RecommendedCard(
                              imageAssetPath: "assets/images/cupcake_chick.png",
                              productName: "Louie's Cup",
                              productDescription: "Vanilla ice cream",
                              productPrice: 8.99,
                              productLikes: 150),
                          RecommendedCard(
                              imageAssetPath: "assets/images/icecream_cone.png",
                              productName: "Bagheera's Cone",
                              productDescription: "Lemon ice cream",
                              productPrice: 8.99,
                              productLikes: 125),
                          RecommendedCard(
                              imageAssetPath: "assets/images/icecream_stick.png",
                              productName: "Shere Khan's Stick",
                              productDescription: "Caramel ice cream",
                              productPrice: 8.99,
                              productLikes: 125),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
