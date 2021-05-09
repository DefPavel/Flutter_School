import 'package:flutter/material.dart';
import 'package:flutter_school/screen/deteil/deteil_screen.dart';

class CallCard extends StatefulWidget {

  String title;
  String subtitle;
  String shorTitle;
  String time;
  String location;

  CallCard({@required this.title, @required this.subtitle , @required this.shorTitle , @required this.location, @required this.time });

  @override
  _CallCardState createState() => _CallCardState();
}

class _CallCardState extends State<CallCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      /*onTap: (){
       /* Navigator.push(context, MaterialPageRoute(builder: (context){
          return ChatDetailPage();
        }));*/

      },*/
      child: InkWell(
        onTap: () {
          //setState(() { 
            Navigator.push(context, MaterialPageRoute(builder: (context){
            return DeteilScreen(userName: 'Александра Будко 8-Б', time: widget.time, title: widget.title, subtitle: widget.subtitle,);
              }));
       // });
        },
          child: Container(
          padding: EdgeInsets.all(13.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                   CircleAvatar(
                    backgroundColor: Colors.green[50],
                    radius: 25.0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff03989e),//Colors.blue[500],
                      radius: 20.0,
                      child: Text(widget.shorTitle, 
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold , fontSize: 15.0
                        ),
                       ), //CircleAvatar
                      ), //CircleAvatar
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.title, style: TextStyle(
                              fontSize:  16, 
                              fontWeight: FontWeight.bold),),
                            SizedBox(height: 6,),
                            Text(widget.subtitle, 
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                              fontSize: 14, 
                              color: Colors.grey.shade500,
                              
                              ),
                            ),
                            SizedBox(height: 6,),
                            Row(
                               children: <Widget>[
                               Icon(Icons.notifications_none, color: Color(0xff03989e)),//Colors.blue[500]),
                               Text(widget.time),

                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Icon(Icons.navigation_outlined, color: Color(0xff03989e)),//Colors.blue[500]),
                                ),
                                Text('Каб. 211'),
                               ],
                              ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text('ДЗ:5'),
                 Text('КР:4'),
                 Text('КР:5')
              ],)
             
            ],
          ),
        ),
      ),
    );
  }
}