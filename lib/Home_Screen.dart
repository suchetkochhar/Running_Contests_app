import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Contest_Widget.dart';
import 'Networking.dart';
class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();

}
class _Home_screenState extends State<Home_screen> {
  List<Contest_tile > List_of_Contests =[];

  @override
  void initState()  {
    super.initState();
    make_a_list();
  }
  void make_a_list() async {

    List_of_Contests.clear();

    List<Contest_tile> l2 =await get_contest_list();
    setState(() {
      List_of_Contests=l2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1565c0),
        appBar: AppBar(
          leading: FlatButton(
            child: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              make_a_list();
            },
          ),
          backgroundColor: Color(0xff0d47a1),
          elevation: 10,
          title: Text(
            'UPCOMING CONTESTS',
            style: TextStyle(
              fontSize: 25,
            ),
          ),



        ),
        body:CupertinoScrollbar(
          child: ListView(
            children: List_of_Contests,
          ),
        )
    );

  }
}