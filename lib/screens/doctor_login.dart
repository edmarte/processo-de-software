import 'package:flutter/material.dart';
import 'package:project_software_process/screens/doctor_register.dart';
import 'package:project_software_process/widget/my_sized_box.dart';

class DoctorLoginScreen extends StatefulWidget{
  const DoctorLoginScreen({super.key});
  @override
  State<DoctorLoginScreen> createState() => _DoctorLoginScreen();
}

class _DoctorLoginScreen extends State<DoctorLoginScreen>{
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
              TextFormField(
                keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'Login',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue),
                  controller: _loginController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Login inválido';
                    }else{
                      return null;
                    }
                  },
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue),
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Digite sua senha.';
                    }else{
                      return null;
                    }
                  },
              ),
              const Padding(padding: EdgeInsets.only(top: 25.0)),
              Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        goToDoctorHome(context);
                      }else{
                        print('errou');
                      }
                    },
                    child: const Text('Entrar'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}