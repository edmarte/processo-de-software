import 'package:flutter/material.dart';
import 'package:project_software_process/screens/user_register.dart';
import 'package:project_software_process/widget/my_button.dart';
import 'package:project_software_process/widget/my_sized_box.dart';
import 'package:project_software_process/widget/my_text_form_field.dart';

class UserLoginScreen extends StatefulWidget{
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreen();
}

class _UserLoginScreen extends State<UserLoginScreen>{
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              mySizedBox(200.0, 200.0,
                  Image.asset('assets/icons/logo_splash_screen.png')),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                child: MyTextFormField(
                  inputType: TextInputType.name,
                  name: 'Login',
                  hideText: false,
                  controller: _loginController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                child: MyTextFormField(
                  inputType: TextInputType.name,
                  name: 'Senha',
                  hideText: true,
                  controller: _passwordController,
                ),
              ),
              MyButton(
                buttonWith: MediaQuery.of(context).size.width,
                buttonHeight: 50.0,
                text: 'Entrar',
                buttonPressed: (){
                  if(_formKey.currentState!.validate()){
                    goToUserHome(context);
                  }else{
                    print('object');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }  
}