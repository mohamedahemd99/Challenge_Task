import 'package:flutter/material.dart';

Widget buildSizedBox(){
  return const SizedBox(
    height: 10,
  );
}
Widget buildText(String text, {style}){
  return   Text(text,
      overflow: TextOverflow.ellipsis,style: style,);
}
