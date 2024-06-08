import 'package:flutter/material.dart';
import 'package:project_software_process/screens/find_doctor.dart';
import 'package:project_software_process/screens/user_exam.dart';
import 'package:project_software_process/widget/my_sized_box.dart';
import 'package:project_software_process/widget/my_text_button.dart';

void goToFindDoctor(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const FindDoctorScreen()));
}

void goToExam(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const ExamScreen()));
}

class UserHomeScreen extends StatefulWidget{
  const UserHomeScreen({super.key});
  @override
  State<UserHomeScreen> createState() => _UserHomeScreen();
}

class _UserHomeScreen extends State<UserHomeScreen>{
  String date = "${DateTime.now().day.toString()}/${DateTime.now().month.toString()}/${DateTime.now().year.toString()}";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saúde App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(date),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                mySizedBox(100.0, 100.0,
                    Image.asset('assets/icons/profile_identify.png')),
                Column(
                  children: <Widget>[
                    mySizedBox(
                      150.0,
                      25.0,
                      const Text(
                        'João Maria',
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
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
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
                    'Você não tem consultas marcadas.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
                mySizedBox(
                  150,
                  75,
                  const Text('Nenhum medicamento Prescrito para hoje.',
                      textAlign: TextAlign.center),
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  myTextButton(100, 100, 'assets/icons/medicoimg.png', 'Médico(a)', goToFindDoctor, context),
                  myTextButton(100, 100, 'assets/icons/exam.png', 'Exames', goToExam, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}