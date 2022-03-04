import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustumInputField(labelText: 'Nombre', hintText: 'Nombre del usuario',),
              SizedBox(height: 30,),
              CustumInputField(labelText: 'Apellido', hintText: 'Apellido del usuario',),
              SizedBox(height: 30,),
              CustumInputField(labelText: 'Email', hintText: 'Email del usuario', keyboardType: TextInputType.emailAddress,),
              SizedBox(height: 30,),
              CustumInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,),
              SizedBox(height: 30,),
            ],
            )
          ),
        )
    );
  }
}

