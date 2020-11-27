import 'package:flutter/material.dart';

class DietThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text('Menu estandar'),
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
                                image: AssetImage('assets/images/pesto_pasta.png'),
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
                            Text('- 440g de espaguetis', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 150 hojas de albahaca', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 300g de queso parmesano', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 2 dientes de ajo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 100g de piñones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- 200ml de aceite de oliva', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(height: 5),
                            Text('- Sal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
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
                      child: Text('Los espaguetis al pesto, consisten en esta popular pasta, preparada con esta salsa de color verde. La albahaca, es el ingrediente que tornará a nuestros espaguetis de este susodicho color. El pesto es una salsa con mucha personalidad. Tanto por el color como por el sabor. El ajo y el queso le darán un toque potente mientras que la albahaca, le dará un toque anisado.',
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
