import 'dart:convert';
import 'constants.dart';
import 'Contest_Widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
Future<List<Contest_tile> > get_contest_list() async {
  DateTime now =DateTime.now().toUtc();
  String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
  String use_1 =formattedDate.substring(0,10);
  use_1+='T';
  use_1+=formattedDate.substring(13);
  List < Contest_tile> ret_list=[];
  String website=base_url+'?' + 'resource=' + Resource +'&start__gt=' + use_1 +'&order_by=start'+cred;
  Response response =await get(Uri.parse(website));
  if(response.statusCode==200){
    var v1 =response.body;
    var v2=jsonDecode(v1);
    var v3 =v2['objects'];
    for(var v4 in v3){
      String name =v4['event'];
      String starting =v4['start'];
      String dura=v4['duration'].toString();
      String website_url=v4['href'];
      int resource_id=v4['resource_id'];
      int seconds=v4['duration'];
      int days=(seconds/86400).toInt();
      seconds%=86400;
      int hours=(seconds/3600).toInt();
      seconds%=3600;
      int minutes=(seconds/60).toInt();


      Contest_tile new_tile=Contest_tile(
        Contest_name: name,
        Start_time: starting,
        Durat: dura,
        days: days,
        minutes: minutes,
        hours: hours,
        resource_id:resource_id,
        url: website_url,
      );
      ret_list.add(new_tile);

    }
    return ret_list;

  }
  else{
    print(response.statusCode);
  }

}