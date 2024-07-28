import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/carousel_item.dart';
import '../widgets/teacher_card.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFFFFEDD3),
            Color(0xFFF8F8F8),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Image.asset(
                        width: 25, height: 23.98, "assets/images/logo.png"),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          "هشام موسى",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Tajawal",
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFF641A)),
                        ),
                        Text(
                          "المرحلة الثانوية",
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: "Tajawal",
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF37474F)),
                        ),
                      ],
                    ),
                    Image.asset(
                        width: 42, height: 42, "assets/images/profile.png"),
                  ],
                ),
        
                ///First Container
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 560,
                  height: 182.49,
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
                      Image.asset("assets/images/Intersect.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset("assets/images/Learning.png"),
                      ),
                      Positioned(
                        right: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "أدخل الكود و أنضم لحصتك الآن!",
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
                        top: 30,
                        right: 6,
                        child: Padding(
                          padding: const EdgeInsets.only( right: 10),
                          child: Text(
                            textAlign: TextAlign.end,
                            "كل ما عليك هو الحصول علي الكود الخاص  \n بك من خلال مركزك التعليمي أو معلمك  \n لمشاهدة الحصة أو الحصول  علي  \n.مذكرة ، واجب أو امتحان   ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 2,
                                color: Color(0xFF37474F),
                                fontFamily: "Tajawal"),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 10,
                          top: 125,
                          child: Container(
                            //padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFFFA980), Color(0xFFFE5E00)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(135, 39),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Text(
                                "أدخل الكود",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontFamily: "Tajawal"),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 550,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFFFF7F3)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFFA980),
                                Color(0xFFFE5E00)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize:Size(80, 5),
                              backgroundColor: Colors.transparent,
                               shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),                        ),
                            child: Text("بحث",style: TextStyle(fontSize: 11.54,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: "Tajawal"
                            ),),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0 , top: 8 ,bottom: 8),
                        child: Text("ابحث عن معلمك أو مركزك التعليمي",
                          style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            fontFamily: "Tajawal"
                        ),),
                      ),
        
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0 ,bottom: 8 , top: 8),
                        child: Icon(Icons.search,color: Color(0xFFFF641A),size: 28,),
                      )
                    ],
                  ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textDirection: TextDirection.rtl,
                    "المعلمين",
                    style: TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFF641A),
                        fontFamily: "Tajawal"
                    ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFAFAFA)
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          ImageIcon(
                            AssetImage("assets/icons/arrow.png"),
                            color: Colors.black,
                          ),
                          SizedBox(width: 10,),
                          Text("المادة",style: TextStyle(fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(49, 49, 49, 0.6),
                              fontFamily: "Tajawal"),)
                        ],),
                      ),),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFAFAFA)
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          ImageIcon(
                            AssetImage("assets/icons/arrow.png"),
                            color: Colors.black,
                          ),
                          SizedBox(width: 10,),
                          Text("المحافظة",style: TextStyle(fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(49, 49, 49, 0.6),
                              fontFamily: "Tajawal"),)
                        ],),
                      ),),
                ],),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 5
                    ,
                    scrollDirection: Axis.horizontal
                    ,itemBuilder: (context, index) {
                    return TeacherCard();
                  },),
                ),
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: controller,
                  children: [
                    CarouselItem(),
                    CarouselItem(),
                    CarouselItem(),
                    CarouselItem(),
                    CarouselItem()

                  ],
                ),
                Positioned(
                  top: 110,
                  right: 15,
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 5,
                    effect: ExpandingDotsEffect(
                      dotHeight: 5,
                      dotWidth: 7,
                      activeDotColor: Color(0xFFFE5E00),
                      radius: 10,
                      dotColor: Color(0xFFFFC9AA),
                    spacing: 10,
                    expansionFactor: 5,
                  ),


                    // WormEffect(
                    //   dotHeight: 5,
                    //   dotWidth: 7,
                    //   activeDotColor: Color(0xFFFE5E00),
                    //   radius: 10,
                    //   type: ,
                    //   dotColor: Color(0xFFFFC9AA)
                    // ),
                  ),
                )
              ],
            ),
          ),
          //SizedBox(height: 16),

        
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/teacher.png"),
              color: Colors.black,
            ),
            label: "حصصى",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/settings.png")),
              label: "حسابى"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/notifications.png")),
              label: "الإشعارات"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icons/Group.png",
                ),
                color: Color(0xFFFE5E00),
              ),
              label: "الرئيسية"),
        ],
      ),
    );
  }
}
