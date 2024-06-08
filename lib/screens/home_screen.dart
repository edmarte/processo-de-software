import 'package:flutter/material.dart';
import 'package:project_software_process/screens/doctor_register.dart';
import 'package:project_software_process/screens/login.dart';
import 'package:project_software_process/screens/register.dart';
import 'package:project_software_process/screens/user_register.dart';
import 'package:project_software_process/widget/my_button.dart';
import 'package:project_software_process/widget/my_icon_button.dart';
import 'package:project_software_process/widget/my_sized_box.dart';
import 'package:project_software_process/widget/my_text_form_field.dart';

void goToRegisterDoctor(BuildContext context){
  Navigator.push(context,
    MaterialPageRoute(builder: (context) => const DoctorRegisterScreen()));
}

void goToRegisterUser(BuildContext context){
  Navigator.push(context,
    MaterialPageRoute(builder: (context) => const UserRegisterScreen()));
}

void goToLoginScreen(BuildContext context){
  Navigator.push(context,
    MaterialPageRoute(builder: (context) => const UserLoginScreen()));
}

void goToRegisterScreen(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
}

class HomeScreen extends StatefulWidget{

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen>{

  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    
    final screenWith = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
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
            'Entre na sua conta',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 10.0, start: 25.0, end: 25.0),
            child: MyTextFormField(
            inputType: TextInputType.number,
            name: 'Email',
            hideText: false,
            controller: _loginController,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 10.0, start: 25.0, end: 25.0),
            child: MyTextFormField(
            inputType: TextInputType.number,
            name: 'Senha',
            hideText: true,
            controller: _passwordController,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 10.0, start: 25.0, end: 25.0),
            child: MyButton(
              buttonWith: screenWith,
              buttonHeight: 50,
              text: 'Entrar',
              buttonPressed: (){},
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
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 50.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Não tem uma conta? '),
                GestureDetector(
                  onTap: (){
                    goToRegisterScreen(context);
                  },
                  child: const Text(
                    'Crie uma',
                    style: TextStyle(color: Colors.blue,),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}