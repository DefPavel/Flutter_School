import 'package:flutter/material.dart';
import 'package:flutter_school/models/ChatUsers.dart';

import 'components/chat_list_screen.dart';

class ChatScreen extends StatefulWidget {

  final String userName;
  ChatScreen({@required this.userName });

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  
  
   List<ChatUsers> chatUsers = [
    ChatUsers(text: "Изабелла", secondaryText: "Что там?", image: "image/avatar.jpg", time: "Только что", isMessageRead: false),
    ChatUsers(text: "Анна", secondaryText: "Где предметы?", image: "image/avatar1.jpg", time: "Вчера", isMessageRead: true),
    ChatUsers(text: "Виктория", secondaryText: "Когда выходить...", image: "image/avatar1.jpg", time: "31.03", isMessageRead: false),
    ChatUsers(text: "Вячеслав", secondaryText: "Что задавали?", image: "image/profile.jpg", time: "30.03",isMessageRead: true),
    ChatUsers(text: "Изабелла", secondaryText: "Что там?", image: "image/avatar.jpg", time: "Только что", isMessageRead: false),
    ChatUsers(text: "Анна", secondaryText: "Где предметы?", image: "image/avatar1.jpg", time: "Вчера", isMessageRead: true),
    ChatUsers(text: "Виктория", secondaryText: "Когда выходить...", image: "image/avatar1.jpg", time: "31.03", isMessageRead: false),
    ChatUsers(text: "Вячеслав", secondaryText: "Что задавали?", image: "image/profile.jpg", time: "30.03",isMessageRead: true),
    ChatUsers(text: "Изабелла", secondaryText: "Что там?", image: "image/avatar.jpg", time: "Только что", isMessageRead: false),
    ChatUsers(text: "Анна", secondaryText: "Где предметы?", image: "image/avatar1.jpg", time: "Вчера", isMessageRead: true),
    ChatUsers(text: "Виктория", secondaryText: "Когда выходить...", image: "image/avatar1.jpg", time: "31.03", isMessageRead: false),
    ChatUsers(text: "Вячеслав", secondaryText: "Что задавали?", image: "image/profile.jpg", time: "30.03",isMessageRead: true),
    ChatUsers(text: "Изабелла", secondaryText: "Что там?", image: "image/avatar.jpg", time: "Только что", isMessageRead: false),
    ChatUsers(text: "Анна", secondaryText: "Где предметы?", image: "image/avatar1.jpg", time: "Вчера", isMessageRead: true),
    ChatUsers(text: "Виктория", secondaryText: "Когда выходить...", image: "image/avatar1.jpg", time: "31.03", isMessageRead: false),
    ChatUsers(text: "Вячеслав", secondaryText: "Что задавали?", image: "image/profile.jpg", time: "30.03",isMessageRead: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Text("Чаты",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Поиск...",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  prefixIcon: Icon(Icons.search,color: Color(0xff03989e),size: 30,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersListScreen(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: chatUsers[index].isMessageRead,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}