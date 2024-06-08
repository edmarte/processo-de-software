import 'package:flutter/material.dart';
import 'package:project_software_process/widget/my_appbar.dart';
import 'package:project_software_process/widget/my_text_button.dart';

class ClinicHome extends StatefulWidget{
  const ClinicHome({super.key});
  @override
  State<ClinicHome> createState() => _ClinicHomeState();
}

class _ClinicHomeState extends State<ClinicHome>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: const MyAppBar(
        titleText: 'Sou Clinica',
        appBarColor: Colors.blue,
        iconColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(right: 20.0)),
                  myTextButton(75, 75, 'assets/icons/consultas.png', 'Consulta', (){}, context),
                  myTextButton(75, 75, 'assets/icons/exam_img.png', 'Exames', (){}, context),
                  myTextButton(75, 75, 'assets/icons/history_img.png', 'Histórico', (){}, context),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(right: 20.0)),
                  myTextButton(75, 75, 'assets/icons/appointment_img.png', 'Usuários', (){}, context),
                  myTextButton(75, 75, 'assets/icons/agenda_img.png', 'Agenda', (){}, context),
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}