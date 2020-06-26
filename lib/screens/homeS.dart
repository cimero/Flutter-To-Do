import 'package:flutter/material.dart';
import 'package:self_writing/card.dart';
import 'package:self_writing/configs.dart';
import 'package:self_writing/screens/n_task.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children:<Widget>[ 
          Column(
          children: <Widget>[
            Container(
              height: h.height * 0.25,
              decoration: BoxDecoration(
                color: primaryGreen,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: <Widget>[
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.menu,size: 32,), onPressed: (){}),
                          IconButton(icon: Icon(Icons.search,size: 32,), onPressed: (){})
                        ],
                      ),
                    )
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Welcome back ...',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[ 
                  Text(
                          'My tasks',
                          style: TextStyle(fontSize: 25),
                          ),
                  ClipOval(
                     child: Material(
                       color: Colors.blue,
                       child: InkWell(
                        splashColor: Colors.red,
                        child: SizedBox(width: 60, height: 60, child: Icon(Icons.message)),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> NewTask()),);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.symmetric(horizontal:20),
              child: Column(
                children: <Widget>[
                     Row(
                      children: <Widget>[
                        ClipOval(
                          child:Material(
                            color: Colors.red[200],
                            child: SizedBox(width: 50, height: 50,child: Icon(Icons.timer,size:30)),
                          )
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: <Widget>[
                            Text(
                              'To do',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Text...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                              fontSize: 18,
                            ),
                            ),
                          ],
                        )
                      ],

                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        ClipOval(
                          child:Material(
                            color: Colors.yellow[200],
                            child: SizedBox(width: 50, height: 50,child: Icon(Icons.power,size:30)),
                          )
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: <Widget>[
                            Text(
                              'To do',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Text...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                              fontSize: 18,
                            ),
                            ),
                          ],
                        )
                      ],

                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        ClipOval(
                          child:Material(
                            color: Colors.purple[200],
                            child: SizedBox(width: 50, height: 50,child: Icon(Icons.playlist_add_check,size:30)),
                          )
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: <Widget>[
                            Text(
                              'To do',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Text...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                              fontSize: 18,
                            ),
                            ),
                          ],
                        )
                      ],

                    ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Activities',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),

              ],
            ),
            Expanded(
                 child: GridView.count(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    children: List.generate(activ.length, (index) {
                      return Center(
                        child: ActivitieCard(activitie: activ[index]),
                      );
                    }
                  ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}

