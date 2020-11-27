import 'package:flutter/material.dart';

class ExerciseThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text('Cardio'),
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
                                image: AssetImage('assets/images/cardioImage2.jpg'),
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
                            Text('- 45 segundos de polichinelas x 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 15 Burpee x 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 20 saltos de rana x 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
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
                      child: Text(' Practicar cardio de forma regular es uno de los aspectos que más tenemos en cuenta a la hora de ponernos en forma. Pero, ¿porqué es tan importante para nuestra salud?Los ejercicios de entrenamiento cardio, son los que aumentan nuestro ritmo cardíaco, incrementan nuestra capacidad de resistencia, y mejoran nuestra condición física.Y es que el ejercicio cardio aporta infinidad de beneficios para nuestra salud, y la podemos realizar en variedad de formas, ya sea andando, corriendo, subiendo escaleras, o realizando cualquier tipo de actividad física durante período prolongado de tiempo a una intensidad moderada.',
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
