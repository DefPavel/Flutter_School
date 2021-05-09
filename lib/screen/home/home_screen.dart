import 'package:flutter/material.dart';
import 'package:flutter_school/models/Calls.dart';
import 'package:flutter_school/screen/home/components/callCard_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeSrceen extends StatefulWidget {
  @override
  _HomeSrceenState createState() => _HomeSrceenState();
}


class _HomeSrceenState extends State<HomeSrceen> {

   CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose(); 
    super.dispose();
  }

  //Массив данных
  List<Calls> callList = [

    Calls(title: 'Русский язык', subtitle: 'Правописание НЕ с глаголами. Страница 44 , параграф 5. Сочинение на тему  "Как я провёл лето" ', shorTitle: 'Рус', time: '8:00 - 8:45', location: '201' ),
    Calls(title: 'Русский язык', subtitle: 'Правописание НЕ с глаголами. Страница 44 , параграф 5. Сочинение на тему  "Как я провёл лето" ', shorTitle: 'Рус', time: '8:00 - 8:45', location: '201' ),
    Calls(title: 'Русский язык', subtitle: 'Правописание НЕ с глаголами. Страница 44 , параграф 5. Сочинение на тему  "Как я провёл лето" ', shorTitle: 'Рус', time: '8:00 - 8:45', location: '201' ),
    Calls(title: 'Русский язык', subtitle: 'Правописание НЕ с глаголами. Страница 44 , параграф 5. Сочинение на тему  "Как я провёл лето" ', shorTitle: 'Рус', time: '8:00 - 8:45', location: '201' ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    Text("Расписание звонков ",
                      style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold
                        ),
                      ),
                  ],
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: 
              TableCalendar(
                locale: 'ru', // Локализация на русский языу
                calendarController: _calendarController, // Ставим контроллер
                initialCalendarFormat: CalendarFormat.week,
                startingDayOfWeek: StartingDayOfWeek.monday,
                formatAnimation: FormatAnimation.slide,

                headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonVisible: false, // Увидеть кнопку изменения вида widget
                  titleTextStyle: TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),

                  leftChevronIcon: Icon(Icons.arrow_back_ios, color: Colors.black54, size: 20,),
                  rightChevronIcon: Icon(Icons.arrow_forward_ios, color: Colors.black54, size: 20,),
                  leftChevronMargin: EdgeInsets.only(left: 70),
                  rightChevronMargin: EdgeInsets.only(right: 70),
                ),
                builders: CalendarBuilders(
                  
                    selectedDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                                offset: Offset(7, 2),
                              ),
                            ],
                            color: Color(0xff03989e),//Colors.blue[500],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          date.day.toString(),

                          style: TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        )
                      ),

                    todayDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                                offset: Offset(7, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                            ),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: Colors.black),
                        )
                      ),
                  ),

                  calendarStyle: CalendarStyle(
                    weekendStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[800]
                    ),
                    weekdayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekendStyle: TextStyle(
                      color: Colors.black
                    ),
                    weekdayStyle: TextStyle(
                      color: Colors.black
                    )
                  ),
              ),
            ),
            SizedBox(height: 10),
            
            ListView.builder(
              itemCount: callList.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:  (context, index){

                return CallCard(
                  title: callList[index].title,
                  subtitle: callList[index].subtitle,
                  shorTitle: callList[index].shorTitle,
                  time: callList[index].time,
                  location: callList[index].location,
                );
              }),


          ],
        ),
    );
  }
}