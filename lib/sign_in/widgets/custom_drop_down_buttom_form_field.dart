import 'package:flutter/material.dart';

class CustomDropDownButtonFormField extends StatelessWidget {
  String title ;
  double padding ;
   CustomDropDownButtonFormField({required this.padding,  required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: ImageIcon(AssetImage("assets/icons/dropdown_menu_icon.png")), // Add your icon here
        contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
      ),
      hint: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding:  EdgeInsets.only( left: padding  ),
          child: Text( title , style:
          TextStyle(fontSize: 14,
              color: Color(0xFFB0B0B0),
              fontFamily: "Tajawal"),),
        ),
      ),
      value: "",
      icon: Container(), // This hides the default arrow icon
      items: [],
      onChanged: (value){

      }

    );
  }
}
