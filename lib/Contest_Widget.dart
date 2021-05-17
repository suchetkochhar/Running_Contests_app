import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'constants.dart';
import 'get_current_date.dart';
import 'package:url_launcher/url_launcher.dart';
class Contest_tile extends StatelessWidget {
  String Contest_name;
  String Start_time;
  String Durat;
  String url;
  int days ;
  int hours;
  int minutes;
  int resource_id;
  Contest_tile(
      {this.Contest_name , this.Start_time , this.Durat , this.days , this.hours , this.minutes , this.resource_id,this.url}
      );
  launch_url() async{
    if (await canLaunch(url))
      await launch(url);
    else
      throw "Could not launch $url";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        margin: EdgeInsets.all(0),
        decoration: BoxDecoration(

            color: Colors.white,
            borderRadius: BorderRadius.circular(20),


            border: Border.all(
              width: 3,
              color: Colors.black,

            )

        ),
        width: double.infinity,
        height: 225,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: FlatButton(
                onPressed: launch_url,
                child: Text(
                  Contest_name,
                  style: kwidget_style1,
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      id_to_website[resource_id],
                      textStyle: kwidget_style2,
                      colors: kcolorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                )
            ),

            Expanded(
                flex: 2,
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        give_start_date(Start_time),
                        style: kwidget_style3,
                      ),
                      Text(
                        give_start_timing(Start_time),
                        style: kwidget_style3,
                      )
                    ],
                  ),
                )
            ),
            Expanded(
              flex: 1,
              child: Text(
                // '2',
                give_duration(days , hours , minutes),
                style: kwidget_style3,
              ),
            ),

          ],
        ),
      ),
    );
  }
}