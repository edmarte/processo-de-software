import 'package:flutter/material.dart';
import 'package:project_software_process/screens/schedule.dart';
import 'package:project_software_process/widget/my_sized_box.dart';
import 'package:project_software_process/widget/my_text_button.dart';
import 'package:table_calendar/table_calendar.dart';

void goToScheduleDoctor(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const ScheduleScreen()));
}

class DoctorHomeScreen extends StatefulWidget{
  const DoctorHomeScreen({super.key});
  @override
  State<DoctorHomeScreen> createState() => _DoctorHomeScreen();
}

class _DoctorHomeScreen extends State<DoctorHomeScreen>{
  String date = "${DateTime.now().day.toString()}/${DateTime.now().month.toString()}/${DateTime.now().year.toString()}";
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Saúde App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),body: Center(
        child: Column(
          children: <Widget>[
            Text(date),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                mySizedBox(
                  100.0,
                  100.0,
                  Image.asset('assets/icons/profile_identify.png'),
                ),
                Column(
                  children: <Widget>[
                    mySizedBox(
                      150.0,
                      25.0,
                      const Text(
                        'Dra. Ana Maria',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    mySizedBox(
                      150.0,
                      25.0,
                      const Text(
                        'CRM/RN 9999',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    mySizedBox(
                      150.0,
                      25.0,
                      const Text(
                        'email@email.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                mySizedBox(
                  150,
                  75,
                  const Text(
                    'Próximo Atendimento:',
                    textAlign: TextAlign.left,
                  ),
                ),
                mySizedBox(
                  200,
                  75,
                  const Text(
                    'Consultório A203 - 10:23\nHospital do Doutor.',
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            const Padding(padding: EdgeInsets.only(right: 20.0)),
            SingleChildScrollView(
              child: Row(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(right: 20.0)),
                  myTextButton(75, 75, 'assets/icons/appointment_img.png', 'Consulta', (){}, context),
                  myTextButton(75, 75, 'assets/icons/agenda_img.png', 'Agenda', goToScheduleDoctor, context),
                  myTextButton(75, 75, 'assets/icons/exam_img.png', 'Exames', (){}, context),
                  myTextButton(75, 75, 'assets/icons/history_img.png', 'Histórico', (){}, context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2010, 01, 01),
              lastDay: DateTime.utc(2030, 12, 31),
              selectedDayPredicate: (day){
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
            ),
            ),
            
          ],
        ),
      ),
    );
  }
}