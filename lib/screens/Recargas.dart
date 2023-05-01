import 'package:apptransaccional/screens/Transferencia.dart';
import 'package:flutter/material.dart';
import 'package:apptransaccional/screens/Autenticacion.dart';
class Recargas extends StatelessWidget {
  const Recargas({super.key});

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
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Recargas',
                style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(height: 10),
            SizedBox(
              width: 400,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Sonrisas a Recargar',
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
            const SizedBox(height: 10),
             /*const Center(
              child: Text(
                'Cantidad a transferir',
                style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                ),
              ),
            ),
            Container(height: 10),
            SizedBox(
              width: 400,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Sonrisas a Transferir',
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
            const SizedBox(height: 10),*/
            const SizedBox(height: 40),
            Positioned(right:0,left:20,bottom:0,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(context: context, builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      backgroundColor: Color.fromARGB(255, 166, 132, 245),
                      alignment: Alignment.center,
                        child: const Text(
                          'Recarga exitosa',
                          style: TextStyle(
                          overflow: TextOverflow.clip,
                          fontSize: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 166, 132, 245),
                shape: const StadiumBorder(),
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
                shape: const StadiumBorder(),
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
