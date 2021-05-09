import 'package:flutter/material.dart';
import 'package:flutter_school/screen/evaluation/evaluation_screen.dart';
import 'package:flutter_school/screen/home/home_screen.dart';
import 'package:flutter_school/screen/messanger/chat_screen.dart';

class NavbarScreen extends StatefulWidget {

  NavbarScreen({Key key, this.userName}) : super(key: key);
  final String userName;
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavbarScreen> {
  int _selectedIndex = 0;
  //Навигация идет по номеру индекса
  List<Widget> _widgetOptions = <Widget>[

    HomeSrceen(),
    EvaluationScreen(),
    Text('3'),
    Text('4'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      //backgroundColor: Colors.blue[500],
      backgroundColor: Colors.white,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
     body: Container(
       child: _widgetOptions.elementAt(_selectedIndex),
     ),
     floatingActionButton: FloatingActionButton(      
        onPressed: () {
           Navigator.push(context,MaterialPageRoute(builder: (context) => ChatScreen(userName: widget.userName,) ),);
        },
        tooltip: 'Чат',
        child: const Icon(Icons.chat),
        backgroundColor: Color(0xff03989e),//Colors.blue[500],
      ),
         // Отображаем страницы
    //  ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 29.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none, 
              ),
            tooltip: 'Расписание Звонков',
            label: 'Звонки',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school_outlined,
            ),
            label: 'Оценки',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.table_chart_outlined
            ),
            tooltip: 'Расписание Уроков',
              label: 'Уроки',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books_outlined,
            ),
              label: 'Предметы',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 15.0,
        selectedItemColor: Color(0xff03989e),//Colors.blue[500],
        unselectedFontSize: 14.0,
      ),

    );
  }
}// Build