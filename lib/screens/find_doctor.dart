import 'package:flutter/material.dart';
import 'package:project_software_process/widget/my_button_theme.dart';
import 'package:project_software_process/widget/my_doctor_profile.dart';

class FindDoctorScreen extends StatefulWidget {
  const FindDoctorScreen({super.key});
  @override
  State<FindDoctorScreen> createState() => _FindDoctorScreen();
}

class _FindDoctorScreen extends State<FindDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saúde App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          //myTextField('Buscar', false),
          myButtonTheme(100.0, 50.0, Colors.blue, 'Buscar', () {}, context),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(top: 10.0)),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                  myDoctorProfile('Clinico Geral', 'Hospital', 'Dr. Luiz',
                      'Av. Avenida', '10 de Dez. 23', 'Agendar Consulta'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}