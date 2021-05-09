import 'package:flutter/material.dart';
import 'package:flutter_school/models/Rating.dart';

class DataTableScreen extends StatefulWidget {
  @override
  _DataTableScreenState createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  @override
  Widget build(BuildContext context) {

    List<Rating> ratingList = [
    Rating(nameThing: 'Русский язык', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),
    Rating(nameThing: 'Физ-ра', day1: '3', day2: '4', day3: '5', day4: '3', day5: '',day6: '5' ),
    Rating(nameThing: 'Математика', day1: '', day2: '4', day3: '', day4: '3', day5: '5',day6: '' ),
    Rating(nameThing: 'География', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '4' ),
    Rating(nameThing: 'Музыка', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),
    Rating(nameThing: 'Алгебра', day1: '4', day2: '4', day3: '5', day4: '3', day5: '3',day6: '' ),
    Rating(nameThing: 'Русский язык', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),
    Rating(nameThing: 'Русский язык', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),
    Rating(nameThing: 'Русский язык', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),
    Rating(nameThing: 'Физ-ра', day1: '3', day2: '4', day3: '5', day4: '3', day5: '',day6: '5' ),
    Rating(nameThing: 'Математика', day1: '', day2: '4', day3: '', day4: '3', day5: '5',day6: '' ),
    Rating(nameThing: 'География', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '4' ),
    Rating(nameThing: 'Музыка', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),
    Rating(nameThing: 'Алгебра', day1: '4', day2: '4', day3: '5', day4: '3', day5: '3',day6: '' ),
    Rating(nameThing: 'Русский язык', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),
    Rating(nameThing: 'Русский язык', day1: '', day2: '4', day3: '5', day4: '3', day5: '',day6: '' ),    
  ];

    return DataTable(
                        sortAscending: true,
                        columnSpacing: 15.0,
                        dataRowHeight: 30.0,

                        columns: 
                        [
                          DataColumn(label: Text('Предметы', style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 15.0,
                            color: Colors.black,)
                            )
                          ),
                          DataColumn(label: Text('01.10', style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 15.0,
                            color: Colors.black,)
                            )
                          ),
                          DataColumn(label: Text('03.10', style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 15.0,
                            color: Colors.black,)
                            )
                          ),
                          DataColumn(label: Text('03.10', style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 15.0,
                            color: Colors.black,)
                            )
                          ),
                         DataColumn(label: Text('04.10', style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 15.0,
                            color: Colors.black,)
                            )
                          ),
                          DataColumn(label: Text('05.10', style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 15.0,
                            color: Colors.black,)
                            )
                          ),
                          DataColumn(label: Text('06.10', style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 15.0,
                            color: Colors.black,)
                            )
                          ),
                         // DataColumn(label: Text('06.10')),
                        ],
                        rows: ratingList
                            .map((rating) => DataRow(
                                    cells: [
                                      DataCell(
                                        Text(rating.nameThing),
                                        onTap: () {
                                          print('Выбран ${rating.nameThing}');
                                        },
                                      ),
                                      DataCell(
                                        Text(rating.day1),
                                      ),
                                      DataCell(
                                        Text(rating.day2),
                                      ),
                                      DataCell(
                                        Text(rating.day3),
                                      ),
                                      DataCell(
                                        Text(rating.day4),
                                      ),
                                      DataCell(
                                        Text(rating.day5),
                                      ),
                                      DataCell(
                                        Text(rating.day6),
                                      )
                                    ]))
                            .toList(),
                      );
  }
}
