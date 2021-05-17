import 'package:flutter/material.dart';
const String base_url ='https://clist.by/api/v2/json/contest/';
const String Username='your_username';
const String Api_key='your_api_key';
const String Resource= 'codeforces.com,leetcode.com,atcoder.jp,codechef.com,codingcompetitions.withgoogle.com';
const String Start__gt='';
const String Order_by='start';
const String cred='&username='+ Username +'&api_key=' +Api_key;
const kwidget_style1=TextStyle(
  fontSize: 25,
  color: Colors.black,
  decoration: TextDecoration.underline,
);
const kwidget_style2=TextStyle(
  fontSize: 28,
);
const kcolorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.black
];
const kregister_text_style=TextStyle(
  fontSize: 22,
);
const Map id_to_website={
  1:'CODEFORCES',
  2:'CODECHEF',
  93 :'ATCODER',
  102:'LEETCODE',
  35 :'GOOGLE',
};
const kwidget_style3=TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);