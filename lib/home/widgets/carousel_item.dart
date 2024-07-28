import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 560,
      height: 210,
      decoration: BoxDecoration(
          color: Color(0xFFFFF5F0),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Color(
                0xFFFFE7DB,
              ),
              width: 1)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8),
            child: Image.asset("assets/images/Plant.png"),
          ),
          Positioned(
              top: 43,
              left: 15
              ,child: Image.asset("assets/images/gift.png")),
          Positioned(
            right: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "شارك التطبيق واحصل على خصومات مميزة!",
                style: TextStyle(
                    color: Color(
                      0xFFFF641A,
                    ),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Tajawal",
                    fontSize: 14),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          Positioned(
            right: 6,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10),
              child: Text(
                textAlign: TextAlign.end,
                "مشاركتك تطبيق حصة مع مزيد من الأصدقاء \n ستحصل علي شارة العضو المميز والتي ستتيح \n لك خصومات مميزة تصل الي 70 % على أكواد \nالحصص بحالة تم طلبها من التطبيق ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Color(0xFF37474F),
                    fontFamily: "Tajawal"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
