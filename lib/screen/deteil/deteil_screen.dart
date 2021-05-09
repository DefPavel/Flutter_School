import 'package:flutter/material.dart';

class DeteilScreen extends StatefulWidget {

  final String userName;
  final String title;
  final String subtitle;
  final String time;

  DeteilScreen({@required this.userName, @required this.title, @required this.subtitle, @required this.time, });

  @override
  _DeteilScreenState createState() => _DeteilScreenState();
}

class _DeteilScreenState extends State<DeteilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
       appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        //leading: Icon(Icons.chevron_left_outlined), //Container() Убрать возможность вернуться обратно на авторизацию
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left_outlined,
            size: 30.0,),
          onPressed: () { Navigator.pop(context); },
          tooltip: 'Назад',
        ),
        backgroundColor: Colors.transparent,

        title: Text( widget.userName,
          style:  TextStyle(
          color: Colors.black,
          ),
          ),

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              tooltip: 'Меню',
              child: const Icon( 
                Icons.more_vert,
                size: 30.0,
              ),
              //Навигация по Popup
              onSelected: (result) 
              {
                switch(result)
                {
                  case 0: 
                    //Navigator.push( context,MaterialPageRoute(builder: (context) => SettingPage()),);
                   break;

                  case 1:
                     //Navigator.push( context,MaterialPageRoute(builder: (context) => SettingPage()),);
                    break;

                  case 2:  
                     //Navigator.push( context,MaterialPageRoute(builder: (context) => SettingPage()),);
                  break;

                  case 3: 
                     //Navigator.push( context,MaterialPageRoute(builder: (context) => SettingPage()),);
                   break;

                }

              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.fact_check_outlined,
                        color: Colors.black,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: Text(
                          "Дневник",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.event_note,
                        color: Colors.black,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: Text(
                          "Заметки",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: Text(
                          "Настройки",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: Text(
                          "Написать разработчикам",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                 PopupMenuItem(
                  value: 4,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.exit_to_app,
                        color: Colors.black,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                        ),
                        child: Text(
                          "Выход",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),],
                    ),
                  ),],
              ),
            ),
          ],
        ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(widget.title,
                        style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                        height: 30,
                        child: Row(
                        children: <Widget>[
                          Icon(Icons.date_range_outlined,color: Color(0xff03989e),size: 30,),
                          SizedBox(width: 2,),
                          Text('31.03',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                     ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.all(16),
                child: Text(widget.subtitle),

              )






            ],
          ),
      ),
    );
    
  }
}