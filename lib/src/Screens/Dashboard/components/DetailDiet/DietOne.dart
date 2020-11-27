import 'package:flutter/material.dart';

class DietOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text('Ensalada de Frutas'),
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
                                image: AssetImage('assets/images/fruit_granola.png'),
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
                            Text('- 10 gr de Granola', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 4 arándanos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 1 taza de yogurt ligth', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 5 fresas', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
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
                      child: Text('Nada más nutritivo, sano, delicioso y fresco para un día de calor que una ensalada de frutas. Es uno de los platos más fáciles de preparar, pero aun así de los más nutritivos, saludables y con pocas calorías para cuidar nuestra salud y a la misma vez comer rico.',
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
