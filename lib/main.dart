import 'package:apple_shop/constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColors.bgColor,
        body: SafeArea(
          child: Center(
            child: Container(
              height: 216,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 10),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Expanded(child: Container()),
                      Image.asset('assets/images/iphone.png'),
                      Positioned(
                        top: 0,
                        right: 10,
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                              'assets/images/active_fav_product.png'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 1),
                            child: Text(
                              '%۳',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'sb',
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                      top: 20,
                      bottom: 10,
                    ),
                    child: Text(
                      'آیفون 13 پرومکس',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'sm',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 53,
                    decoration: const BoxDecoration(
                      color: HexColors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: HexColors.blue,
                          blurRadius: 25,
                          spreadRadius: -12,
                          offset: Offset(0.0, 15),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'تومان',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'sm',
                            ),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '۴۶٬۰۰۰٬۰۰۰',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'sm',
                                ),
                              ),
                              Text(
                                '۴۵٬۳۵۰٬۰۰۰',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'sm',
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/icon_right_arrow_cricle.png',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
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

class CategoryHorizantalItemList extends StatelessWidget {
  const CategoryHorizantalItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: ShapeDecoration(
                color: Colors.amber,
                shadows: const [
                  BoxShadow(
                    color: Colors.amber,
                    blurRadius: 40,
                    spreadRadius: -17,
                    offset: Offset(0.0, 15),
                  ),
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            const Icon(
              Icons.abc,
              color: Colors.black,
              size: 50,
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'همه',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'sb',
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
