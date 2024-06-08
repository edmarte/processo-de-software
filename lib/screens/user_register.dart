import 'package:flutter/material.dart';
import 'package:project_software_process/screens/user_home.dart';
import 'package:project_software_process/screens/login.dart';
import 'package:project_software_process/widget/my_sized_box.dart';

void goToUserLogin(BuildContext context){
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const UserLoginScreen()),
  );
}

void goToUserHome(BuildContext context){
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const UserHomeScreen()),
  );
}

class UserRegisterScreen extends StatefulWidget{
  const UserRegisterScreen({ super.key});

  @override
  State<UserRegisterScreen> createState () => _UserRegisterScreen();
}

class _UserRegisterScreen extends State<UserRegisterScreen>{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
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
                    labelText: 'CPF',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue),
                  controller: _cpfController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'CPF inválido';
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
                        goToUserHome(context);
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
                    onPressed: () => goToUserLogin(context),
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