import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activitie{
  const Activitie({this.t,this.icon,this.color});
  final String t;
  final IconData icon;
  final Color color;


}

const List activ = const [
  const Activitie(t: 'Project', icon: Icons.add,color: Colors.cyan),
  const Activitie(t: 'Project', icon: Icons.power_settings_new,color: Colors.yellow),
  const Activitie(t: 'Project', icon: Icons.power_settings_new,color: Colors.red),
  const Activitie(t: 'Project', icon: Icons.power_settings_new,color: Colors.orangeAccent),
];

class ActivitieCard extends StatelessWidget {

  const ActivitieCard({Key key,this.activitie, this.color,}) : super(key:key);

  final Activitie activitie;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: 180,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color : Colors.indigo,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(activitie.icon,size: 100,color: Colors.blueGrey[100],),
                SizedBox(height: 10,),
                Text(activitie.t,style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),)

              ],
            ),
          )
        ],
      ),
    );
        
  }
  /*@override
  Widget build(BuildContext context) {
    return Card(
          color: color,
          child: Center(
            child: Container(
              height: 90,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: color),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child:
                            Icon(activitie.icon, size: 90.0, color: Colors.blueGrey )),
                    Text(activitie.t, style: TextStyle(
                      fontSize : 20,
                    )),
                  ]),
            ),
          ));
  }*/
}