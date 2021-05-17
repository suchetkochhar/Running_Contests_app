import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
int start_year;
int start_month;
int start_day;
int start_hour;
int start_min;
String give_duration(int days, int hours , int minutes){

  String ans="";
  if(days>0){
    ans=ans +' $days'+ 'Days';
  }
  if(hours>0){
    ans =ans +' $hours'+ 'Hours';
  }
  if(minutes>0){
    ans= ans +' $minutes'+ 'minutes';
  }
  return 'Duration :' +ans;
}
DateTime return_date_time(String Start_time){
  start_year=int.parse(Start_time.substring(0,4));
  start_month=int.parse(Start_time.substring(5,7));
  start_day=int.parse(Start_time.substring(8,10));
  start_hour=int.parse(Start_time.substring(11,13));
  start_min=int.parse(Start_time.substring(14,16));
  var contest_timing=DateTime(start_year , start_month,start_day , start_hour , start_min);
  contest_timing=contest_timing.add(Duration(hours: 5 , minutes: 30));
  return contest_timing;
}
String give_start_date(String Start_time){
  var contest_timing=return_date_time(Start_time);
  String ans=contest_timing.day.toString()+'-'+contest_timing.month.toString()+'-'+contest_timing.year.toString();
  return ans;

}
String give_start_timing(String Start_time){
  var contest_timing=return_date_time(Start_time);
  String formattedTime = DateFormat.Hms().format(contest_timing);
  return formattedTime;
}