import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget{

  final TextInputType inputType;
  final String name;
  final bool hideText;
  final TextEditingController controller;

  const MyTextFormField({
    super.key,
    required this.inputType,
    required this.name,
    required this.hideText,
    required this.controller,
  });
  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField>{
  
  late TextInputType inputType;
  late String name;
  late bool hideText;
  late TextEditingController controller;
  late double borderCircular;

  @override
  void initState(){
    super.initState();
    inputType = widget.inputType;
    name = widget.name;
    hideText = widget.hideText;
    controller = widget.controller;
    borderCircular = 10.0;
  }

  @override
  Widget build(BuildContext context){
    return TextFormField(
    keyboardType: inputType,
    decoration: InputDecoration(
      labelText: name,
      fillColor: Colors.blue,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderCircular),
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 2.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderCircular),
        borderSide: const BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderCircular),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2.0,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderCircular),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2.0,
        ),
      ),
    ),
    textAlign: TextAlign.center,
    style: const TextStyle(color: Colors.black),
    obscureText: hideText,
    controller: controller,
    validator: (value){
      if(value!.isEmpty){
        return '$name invalido';
      }else{
        return null;
      }
    },
    );
  }
}