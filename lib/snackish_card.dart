import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:jp_screens/order.dart';

class SnackishCard extends StatelessWidget {
  const SnackishCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.white.withAlpha(25),
          width: 1.5,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      clipBehavior: Clip.hardEdge,
      color: Colors.white.withAlpha(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 4,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                    ),
                    "Feeling Snackish Today?",
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 13,
                        letterSpacing: 0.25,
                      ),
                      "Explore Angis's most popular snack selection\nand gvet instantly happy."),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 200,
                          height: 44,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFE970C4),
                                const Color(0xFFF69EA3),
                              ],
                            ),
                            boxShadow: [
                              //drop shadow
                              BoxShadow(
                                  color: const Color(0x32EA71C5),
                                  offset: Offset(0, 30),
                                  blurRadius: 90,
                                  spreadRadius: 0,
                                  blurStyle: BlurStyle.inner), // ? BoxStyle.inner
                              // inner shadow
                              BoxShadow(
                                color: const Color(0xFFFFACE4),
                                offset: Offset(0, 0),
                                blurRadius: 15,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.solid,
                              ),
                              // inner shadow
                              BoxShadow(
                                color: const Color(0xFF9375B6),
                                offset: Offset(0, -3),
                                blurRadius: 24,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.solid,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white.withAlpha(25),
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                  strokeAlign: BorderSide.strokeAlignInside,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Order(),
                                ),
                              );
                            },
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
