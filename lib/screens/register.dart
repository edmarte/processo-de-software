import 'package:flutter/material.dart';
import 'package:project_software_process/screens/clinic_home.dart';
import 'package:project_software_process/screens/doctor_home.dart';
import 'package:project_software_process/screens/user_home.dart';
import 'package:project_software_process/widget/my_appbar.dart';
import 'package:project_software_process/widget/my_button.dart';
import 'package:project_software_process/widget/my_icon_button.dart';
import 'package:project_software_process/widget/my_sized_box.dart';
import 'package:project_software_process/widget/my_text_form_field.dart';

void goToClinicHome(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const ClinicHome()));
}

void goToDoctorHome(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const DoctorHomeScreen()));
}

void goToUserHome(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const UserHomeScreen()));
}

class RegisterScreen extends StatefulWidget{

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context){

    int userType = 0;
    final screenWith = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const MyAppBar(
        titleText: '',
        appBarColor: Colors.white70,
        iconColor: Colors.black,
      ),
      body: Form(
        child: Center(
          child: Column(
            children: <Widget>[
              mySizedBox(
                150.0,
                150.0,
                Image.asset('assets/icons/logo_pre.png'),
              ),
              mySizedBox(
                250.0,
                100.0,
                const Text(
                  'Saúde App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              const Text(
                'Crie sua conta',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.left,
              ),
              Row(
                children: <Widget>[
                  Padding(
                padding: const EdgeInsetsDirectional.only(top: 25, start: 25.0),
                child: MyButton(
                  buttonWith: (screenWith-70)/3,
                  buttonHeight: 50,
                  text: 'Clinica',
                  buttonPressed: (){userType = 1;},
                ), 
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 25, start: 10.0),
                child: MyButton(
                  buttonWith: (screenWith-70)/3,
                  buttonHeight: 50,
                  text: 'Medico',
                  buttonPressed: (){userType = 2;},
                ), 
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 25, start: 10.0),
                child: MyButton(
                  buttonWith: (screenWith-70)/3,
                  buttonHeight: 50,
                  text: 'Paciente',
                  buttonPressed: (){userType = 3;},
                ), 
              ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 10.0, start: 25.0, end: 25.0),
                child: MyTextFormField(
                inputType: TextInputType.emailAddress,
                name: 'Email',
                hideText: false,
                controller: _emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 10.0, start: 25.0, end: 25.0),
                child: MyTextFormField(
                inputType: TextInputType.name,
                name: 'Senha',
                hideText: true,
                controller: _passwordController,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 10.0, start: 25.0, end: 25.0),
                child: MyTextFormField(
                inputType: TextInputType.name,
                name: 'Confirme sua senha',
                hideText: true,
                controller: _confirmPasswordController,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 10.0, start: 25.0, end: 25.0),
                child: MyButton(
                buttonWith: screenWith,
                buttonHeight: 50,
                text: 'Inscreva-se',
                buttonPressed: (){
                  if(userType == 0){
                    print('opcao invalida');
                  }else if(userType == 1){
                    goToClinicHome(context);
                  }else if(userType == 2){
                    goToDoctorHome(context);                    
                  }else if(userType == 3){
                    goToUserHome(context);
                  }
                },
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(top: 50.0,),
                child: Text('Ou crie uma conta com'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MyIconButton(
                      buttonWidth: 50.0,
                      buttonHeight: 50.0,
                      img: 'assets/icons/google_logo.png',
                      buttonPressed: (){},
                    ),
                  ],
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}