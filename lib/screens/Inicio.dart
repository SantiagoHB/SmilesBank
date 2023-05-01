import 'package:apptransaccional/screens/Transferencia.dart';
import 'package:flutter/material.dart';
import 'package:apptransaccional/screens/Autenticacion.dart';

import 'Retirar.dart';
class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Saldo',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              ),
            const SizedBox(height: 5),
            Stack(
                children: <Widget> [Container(
                  width:400,
                  height:80,                
                  decoration: const BoxDecoration(
                    color:Color.fromARGB(255, 166, 132, 245),
                    borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                    ),
                  ),
                  
                ),
              Positioned(
                right:10,left:10,bottom:5,
                child: Container(
                    width:380,
                    height:70,                
                      decoration: const BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                        ),
                      ),
                    
                  ),
              ),
              const Positioned(right:0,left:140,bottom:30,
              child: Text(
                '40.395 Smiles',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 166, 132, 245),
                ),
              ),
              )
                
          ]),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //ir
                  Navigator.push( //volver
                    context, 
                    MaterialPageRoute(builder: (_) => const Transferencia())
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 166, 132, 245),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 1.5,
                  color: Color.fromARGB(255, 255, 255, 255),)),
                child: const Text(
                  'Transferir',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //ir
                  Navigator.push( //volver
                    context, 
                    MaterialPageRoute(builder: (_) => const Retirar())
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 166, 132, 245),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 1.5,
                  color: Color.fromARGB(255, 255, 255, 255),)),
                child: const Text(
                  'Retirar',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //ir
                  Navigator.push( //volver
                    context, 
                    MaterialPageRoute(builder: (_) => const Autenticacion())
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 166, 132, 245),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 1.5,
                  color: Color.fromARGB(255, 255, 255, 255),)),
                child: const Text(
                  'Recargar',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 100), // Espacio vacío entre los botones y el botón de cerrar sesión
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //ir
                  Navigator.push( //volver
                    context, 
                    MaterialPageRoute(builder: (_) => const Autenticacion())
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 166, 132, 245),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 1.5,
                  color: Color.fromARGB(255, 255, 255, 255),)),
                child: const Text(
                  'Cerrar Sesión',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        )
    );
  }
}
