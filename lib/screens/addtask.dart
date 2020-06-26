import 'package:flutter/material.dart';
import 'package:self_writing/configs.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//import 'package:self_writing/calendar.dart';


class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
              child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: h.height*0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    color: primaryGreen,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SafeArea(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                              Navigator.pop(context);
                            }),
                          ),
                        ),
                        Text('Create a new task',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        Text('Title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                        Text('Title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}
