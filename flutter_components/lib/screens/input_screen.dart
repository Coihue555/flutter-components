// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Andres',
      'last_name' : 'Bastias',
      'email'     : 'kevlar555@hotmail.com',
      'password'  : '123456',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustumInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30,),
                CustumInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues),
                const SizedBox(height: 30,),
                CustumInputField(labelText: 'Email', hintText: 'Email del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox(height: 30,),
                CustumInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  items:const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                    onChanged: ( value ){
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                ),


                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))),
                  onPressed: (){
                    //se comento la siguiente linea de codigo ya que limpiaba el formulario y se 'congelaba' al 
                    //querer elegir otra opcion del dropdown
                    //FocusScope.of(context).requestFocus( FocusNode() );
                    if ( !myFormKey.currentState!.validate() ){
                      print('Formulario no válido');
                      return;
                    }
                    print(formValues);
                  }
                  
                  )
              ],
              ),
          )
          ),
        )
    );
  }
}

