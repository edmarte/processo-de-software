import 'package:flutter/material.dart';
import 'package:project_software_process/screens/doctor_home.dart';
import 'package:project_software_process/screens/doctor_login.dart';
import 'package:project_software_process/widget/my_sized_box.dart';

void goToDoctorHome(BuildContext context){
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const DoctorHomeScreen()),
  );
}

void goToDoctorLogin(BuildContext context){
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const DoctorLoginScreen()),
  );
}

class DoctorRegisterScreen extends StatefulWidget{
  const DoctorRegisterScreen({ super.key});

  @override
  State<DoctorRegisterScreen> createState () => _DoctorRegisterScreen();
}

class _DoctorRegisterScreen extends State<DoctorRegisterScreen>{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _crmController = TextEditingController();
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
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                mySizedBox(
                  200.0,
                  200.0,
                  Image.asset('assets/icons/logo_splash_screen.png'),
                ),
                mySizedBox(
                  100.0,
                  100.0,
                  const Text(
                    'Saúde App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue),
                  controller: _nameController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Nome inválido';
                    }else{
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue),
                  controller: _emailController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'E-mail inválido';
                    }else{
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'CRM',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue),
                  controller: _crmController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'CRM inválido';
                    }else{
                      return null;
                    }
                  },
                ),
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
                    child: const Text('Cadastrar'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    child: const Text(
                      'Já tenho Conta? Faça Login',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () => goToDoctorLogin(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}