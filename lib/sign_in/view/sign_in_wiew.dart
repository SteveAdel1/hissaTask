import 'package:app/core/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drop_down_buttom_form_field.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  var formKey = GlobalKey<FormState>();
  var studentNameController = TextEditingController();
  var ganderController = TextEditingController();
  var educationYearController = TextEditingController();
  var passwordController = TextEditingController();
  var parentNameController = TextEditingController();
  var parentPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  width: size.width,
                  child: Image.asset("assets/images/register_img.png" , fit: BoxFit.cover ,)),
                      SizedBox(
                        height: 20,),
                      Image.asset(
                          "assets/images/union_sign_in.png"),
                      SizedBox(
                        height: 20,),
                      Text("انشاء حساب" ,
                        style: TextStyle(fontSize: 24 , fontWeight: FontWeight.w400 , fontFamily: "Tajawal"),),
                      SizedBox(height: 10,),
                      Text(
                        textAlign: TextAlign.center,
                        "يتم انشاء الحساب لجهاز واحد فقط ، ولا يتم \n فتح الحساب من أي جهاز آخر" , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400 , fontFamily: "Tajawal"),),
                     Padding(
                       padding: const EdgeInsets.only(top: 35.0 , left: 70,right: 70),
                       child: CustomTextField(
                         controller: studentNameController,
                         hint: 'اسم الطالب',
                       ),
                     ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(right: 5,left: 70),
                      child: CustomDropDownButtonFormField(title: "النوع" , padding: 60,),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(right: 70.0,left: 5),
                      child: CustomDropDownButtonFormField(title: "تاريخ الميلاد" , padding: 15,),
                    )),
                ],),

              ),
              Padding(
                padding: const EdgeInsets.only( left: 70,right: 70),
                child: CustomDropDownButtonFormField(title: "المرحلة التعليمية", padding: 140,)
              ),
              Padding(
                padding: const EdgeInsets.only( top: 15,left: 70,right: 70),
                child:

                CustomDropDownButtonFormField(title: 'السنة الدراسية',padding: 150,),),
              Padding(
                padding: const EdgeInsets.only(top:15 , left: 70,right: 70),
                child: CustomTextField(
                  hint: 'كلمة المرور',
                  isPassword: true,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15 , left: 70,right: 70),
                child: CustomTextField(
                  hint: 'تأكيد كلمة المرور',
                  isPassword: true,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15 , left: 70,right: 70),
                child: CustomTextField(
                  hint: 'اسم ولى امر الطالب',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15 , left: 70,right: 70),
                child: CustomTextField(
                  hint: 'رقم هاتف ولى امر الطالب',
                  keyboardType: TextInputType.phone,
                ),
              ),
            SizedBox(height: 20,),

            Container(
              width: size.width * 0.69,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFD8C10), Color(0xFFFE5E00)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(243.5, 45),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  "انشاء حساب",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Tajawal"),
                ),
              ),
            ),
              SizedBox(height: 35,),
              Text("لديك حساب؟", style: TextStyle(
                fontFamily: "Tajawal",
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  width: size.width * 0.69,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFFE5E00))
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(243.5, 45),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color:Color(0xFFFE5E00),
                          fontFamily: "Tajawal"),
                    ),
                  ),
                ),
              ),



          
          
            ],
          ),
        ),
      ),
    );
  }
}
