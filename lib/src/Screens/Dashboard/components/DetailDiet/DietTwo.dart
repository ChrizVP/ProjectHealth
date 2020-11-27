import 'package:flutter/material.dart';

class DietTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text('Ensalada keto'),
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
                                image: AssetImage('assets/images/keto_snack.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Ingredientes:',
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
                            Text('- 1 Palta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 1 Tomate en rodajas pequeñas', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 1 cdra. de Sal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 16g de Tocino', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
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
                      child: Text('Una ensalada puede ser una opción genial para un almuerzo o como guarnición que acompañe cualquier plato. Mucha gente considera que las ensaladas no son llenadoras, y que se quedarán con hambre. Si eres una de esas personas, ¡olvídate de eso! Nuestras ensaladas bajas en carbos y keto están repletas de nutrientes, sabores y una buena dosis de grasas saludables para mantenerte saciado durante todo el día.',
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
