// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'Inicio.dart';

class Autenticacion extends StatefulWidget {
  const Autenticacion({super.key});

  @override
  State<Autenticacion> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Autenticacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
                "Smile's Bank",
                style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white               
                ),
              ),
          ),
          Container(height: 40,),
          const Center(
            child: Text(
                'USER',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
          ),
          Container(height: 10,),
          Container(
            width: 400,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'User Name',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          Container(height: 30,),
          const Center(
            child: Text(
                'PASSWORD',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
          ),
          Container(height: 10,),
          Container(
            width: 400,
            
            
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                
                ),
              
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          Container(height: 40,),
            
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const PaginaInicio()) //funcion flecha = hacer una cosa, una sola función
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 166, 132, 245),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 1.5,
                  color: Color.fromARGB(255, 255, 255, 255),),
            ),
            child: const Text(
              'Iniciar sesión', 
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
          // const Text('CONTRASEÑA'),
          // Row(
          //   children: [
          //     TextFormField(),
          //     const Icon(Icons.password)
          //   ]
          // )
        //],
      ),
    );
  }
}
