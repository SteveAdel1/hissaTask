import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only( top: 3.0,right: 5,),
      child: Container(
        width: size.width * (168 / 375).w,
        height: size.height * (144 / 858) .h ,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color.fromRGBO(255, 100, 26, 1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width ,
                  height: size.height * (60 / 858).h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 100, 26, 0.6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        alignment: Alignment.center,
                        width: 78,
                        decoration: BoxDecoration(color: Colors.white),
                        child: ClipPath(
                          child: Image.asset(
                            "assets/images/master.png",
                            width: 78.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "أحمد خالد",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Tajawal",
                fontSize: 16,
              ),
            ),
            Text(
              "مدرس لغة عربية",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: "Tajawal",
                fontSize: 11,
                color: Color(0xFFFF641A),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "مركز التميز التعليمي",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Tajawal",
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      "assets/icons/center.png",
                      width: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height * (65 / 858),
              decoration: BoxDecoration(
                color: Color(0xFFFFF0E7),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "حصة",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF641A),
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset("assets/icons/watch.png"),
                        Spacer(),
                        Text(
                          "متابعا",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "3",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF641A),
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset("assets/icons/love.png"),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        SizedBox(width: 3),
                        Text(
                          "امتحان",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF641A),
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset("assets/icons/exam.png"),
                        Spacer(),
                        Text(
                          "مذكرات",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "6",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF641A),
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset("assets/icons/note.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
