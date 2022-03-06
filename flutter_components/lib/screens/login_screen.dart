// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 233, 211),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height * 0.9,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: size.height * 0.15,
                      width: size.width,
                      child: const Image(
                          image: NetworkImage(
                              'https://images-platform.99static.com/4vDXDpkKRtf2D40BzDEpd9mcZ_g=/1117x629:1884x1396/500x500/top/smart/99designs-contests-attachments/99/99979/attachment_99979397'),
                          fit: BoxFit.cover)),
                  SizedBox(height: size.height * 0.3, width: size.width),
                  TextFormField(
                    autofocus: false,
                    initialValue: '',
                    textCapitalization: TextCapitalization.words,
                    validator: (value) {
                      if (value == null) return 'Este campo es requerido';
                      return value.length < 3
                          ? 'Ingrese minimo 3 letras'
                          : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      hintText: 'Ingrese su correo electrónico',
                      labelText: 'Correo electrónico',
                      helperText: 'Ingrese su correo electrónico',
                      suffixIcon: const Icon(Icons.person),
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    initialValue: '',
                    textCapitalization: TextCapitalization.words,
                    obscureText: true,
                    validator: (value) {
                      if (value == null) return 'Este campo es requerido';
                      return value.length < 10
                          ? 'Ingrese minimo 10 caracteres'
                          : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      hintText: 'Ingrese una contraseña',
                      labelText: 'Contraseña',
                      helperText:
                          'Verifique que su contraseña tenga mas de 10 caracteres',
                      suffixIcon: const Icon(
                        Icons.key,
                        color: Color.fromARGB(255, 202, 233, 211),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 97, 112, 101),
                            elevation: 5),
                        child: const Center(
                          child: Text('Guardar'),
                          widthFactor: 500,
                        ),
                        onPressed: () {
                          return;
                        }),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
