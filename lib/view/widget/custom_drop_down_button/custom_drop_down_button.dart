


import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDropdownButton2 extends StatefulWidget {
  final String? value;
  final String hint;
  final bool isExpanded;
  final List<String> items;
  final Function(String?) onChanged;

  CustomDropdownButton2({
    required this.value,
    required this.hint,
    required this.isExpanded,
    required this.items,
    required this.onChanged,
  });

  @override
  _CustomDropdownButton2State createState() => _CustomDropdownButton2State();
}

class _CustomDropdownButton2State extends State<CustomDropdownButton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 12.0.w,left: 10.w),
        child: DropdownButton<String>(
          value: widget.value,
          hint: Text(widget.hint),
          isExpanded: widget.isExpanded,
          underline: SizedBox(),
          onChanged: widget.onChanged,
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  color: Color(0xff334257),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}