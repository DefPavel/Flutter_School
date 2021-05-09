import 'package:flutter/material.dart';

class ChatUsersListScreen extends StatefulWidget {

  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;

  ChatUsersListScreen({@required this.text,@required this.secondaryText,@required this.image,@required this.time,@required this.isMessageRead});
  @override
  _ChatUsersListScreenState createState() => _ChatUsersListScreenState();
}

class _ChatUsersListScreenState extends State<ChatUsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          print('Выбран:${widget.text}');
        },
          child: Container(
          padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.image),
                      maxRadius: 30,
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.text, style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 6,),
                            Text(widget.secondaryText,style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(widget.time,style: TextStyle(fontSize: 12, color: widget.isMessageRead? Color(0xff03989e): Colors.grey.shade500),),
            ],
          ),
        ),
      ),
    );
  }
}