import 'package:flutter/material.dart';

class ExerciseTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text('Abdominales'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                                image: AssetImage('assets/images/AbodminalesSerie.jpg'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Serie:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      )
                  ),
                  SizedBox(height: 20),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('- 10 abdominales x 5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 10 sentadillas con salto x 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 10 Abdominales con piernas a 90° x 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      )
                  ),
                  SizedBox(height: 20),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Descripción:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      )
                  ),
                  SizedBox(height: 20),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Los abdominales se tratan de un ejercicio global y muy completo que se realiza en ausencia de movimiento con el propio peso corporal y en el que, además del abdomen, se involucran otros muchos grupos musculares generando mucha tensión e intensidad. Son la alternativa preferida por muchos entrenadores para fortalecer el core y aportar estabilidad al tronco puesto que trabaja de manera eficaz todas las partes que componen el abdomen (recto anterior, oblicuos y transverso).',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      )
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }

}
