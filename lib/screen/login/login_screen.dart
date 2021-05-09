
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_school/screen/navbar/navbar_screen.dart';

class LoginScreen extends StatefulWidget 
{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> 
{
  bool rememberMe = false;

  @override
  void dispose()
  {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Авторизация',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),

                      //-------EMAIL-------------

                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Логин:',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'
                            ),
                        ),
                        SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color:  Colors.white, //color: Color(0xFF6CA8F1)
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              height: 60.0,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.email,
                                   color: Color(0xff03989e),//Colors.blue[500],
                                ),
                                hintText: 'Введите логин или email',
                                hintStyle: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),

                      // ----------- PASSWORD --------------
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Пароль:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'
                              ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            height: 60.0,
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff03989e),//Colors.blue[500],
                                ),
                                hintText: 'Введите пароль',
                                hintStyle: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //-----  ForgotPasswordBtn ---------
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => print('Забыт пароль'),
                          //padding: EdgeInsets.only(right: 0.0),
                          child: Text(
                            'Забыли пароль?',
                            style: TextStyle(
                              color: Color(0xff03989e),//Colors.blue[500],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'
                              ),
                          ),
                        ),
                      ), 

                      // ------------------RememberMeCheckbox---------------
                      Container(
                        height: 30.0,
                        child: Row(
                          children: <Widget>[
                            Theme(
                              data: ThemeData(unselectedWidgetColor:  Color(0xff03989e)/*Colors.blue[500]*/),
                              child: Checkbox(
                                value: rememberMe,
                                checkColor: Colors.white,
                                activeColor: Color(0xff03989e),//Colors.blue[500],
                                onChanged: (bool newValue) {
                                setState(() {
                                    rememberMe = newValue;
                                    print(newValue);
                                  }
                                );
                              }
                            ),
                            ),
                            Text(
                              'Запомнить?',
                              style: TextStyle(
                              color:  Color(0xff03989e),//Colors.blue[500],
                              letterSpacing: 1.5,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                            ),
                          ],
                        ),
                      ),

                      //---------------- BUTTTON LOGIN ------------------------      
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 25.0),
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () { 
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NavbarScreen(userName: 'Александра Будко 8-Б',)),
                              );
                            },
                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            color: Color(0xff03989e),//Colors.blue[500],
                            child: Text(
                              'ВВОЙТИ',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}