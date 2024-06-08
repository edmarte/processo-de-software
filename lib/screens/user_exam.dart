import 'package:flutter/material.dart';
import 'package:project_software_process/widget/my_button_theme.dart';
import 'package:project_software_process/widget/my_manager_exam.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});
  @override
  State<ExamScreen> createState() => _ExamScreen();
}


class _ExamScreen extends State<ExamScreen> {
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
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Concluido',
                      'Qua. 3 de Nov.',
                      context),
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Pendente',
                      'Qua. 3 de Nov.',
                      context),
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Concluido',
                      'Qua. 3 de Nov.',
                      context),
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Pendente',
                      'Qua. 3 de Nov.',
                      context),
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Concluido',
                      'Qua. 3 de Nov.',
                      context),
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Pendente',
                      'Qua. 3 de Nov.',
                      context),
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Concluido',
                      'Qua. 3 de Nov.',
                      context),
                  myManagerExam(
                      'Exame de Sangue',
                      'Hospital do Sangue',
                      'Dra. Ana Maria Braga',
                      'Pendente',
                      'Qua. 3 de Nov.',
                      context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}