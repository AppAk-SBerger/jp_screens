import 'package:flutter/material.dart';
import 'package:jp_screens/snackish_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // background
          SizedBox(
            height: double.infinity,
            child: Image(
              image: AssetImage(
                'assets/backgrounds/bg_startscreen.png',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),

          // cupcake_chick
          Positioned(
            top: 100,
            left: -50,
            child: Image(
              height: 600,
              width: 600,
              fit: BoxFit.cover,
              alignment: Alignment(0, 0),
              image: AssetImage(
                'assets/images/cupcake_chick.png',
              ),
            ),
          ),

          // snack-snack-slogan
          Positioned(
            top: 485,
            child: Opacity(
              opacity: 0.25,
              child: Image(
                width: 402,
                fit: BoxFit.fitWidth,
                alignment: Alignment(0, 0),
                image: AssetImage(
                  'assets/details/snack_snack.png',
                ),
              ),
            ),
          ),

          // snackish-Card
          Positioned(
            top: 600,
            bottom: 50,
            left: 24,
            right: 24,
            child: SnackishCard(),
          ),
        ],
      ),
    );
  }
}
