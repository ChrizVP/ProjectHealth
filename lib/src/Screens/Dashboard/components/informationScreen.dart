import 'package:ProjectHealth/src/Screens/Dashboard/components/DetailDiet/DietThree.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/DetailDiet/DietTwo.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/DetailExercise/ExerciseOne.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/DetailExercise/ExerciseThree.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/DetailExercise/ExerciseTwo.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/musicScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailDiet/DietOne.dart';

class InformationScreen extends StatefulWidget {
  @override
  _MyInformationScreen createState() => _MyInformationScreen();
}

class _MyInformationScreen extends State<InformationScreen> {
  bool closeTopContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "Dieta balanceada",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  //alignment: Alignment.,
                  child: Programs()),
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "Ejercicios",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  //alignment: Alignment.,
                  child: Exercise()),
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "Meditación",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  //alignment: Alignment.,
                  child: mindfulness()),
            ),
          ]),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Programs() {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;

    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DietOne();
                        //ComunityScreen(widget.person, widget.weight);
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/fruit_granola.png",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 70),
                          child: Text(
                            "Desayuno nutritivo",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DietTwo();
                        //ComunityScreen(widget.person, widget.weight);
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/keto_snack.png",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 80),
                            child: Text(
                              "Ensalada",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DietThree();
                        //ComunityScreen(widget.person, widget.weight);
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/pesto_pasta.png",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 80),
                            child: Text(
                              "Almuerzo",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ));
  }

  Exercise() {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;

    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ExerciseOne();
                        //ComunityScreen(widget.person, widget.weight);
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/Planchasimage.jpg",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 70),
                          child: Text(
                            "Flexiones",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ExerciseTwo();
                        //ComunityScreen(widget.person, widget.weight);
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/abdominales2.jpg",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 80),
                            child: Text(
                              "Abdominales",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ExerciseThree();
                        //ComunityScreen(widget.person, widget.weight);
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/cardioImage.jpg",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 80),
                            child: Text(
                              "Cardio",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  mindfulness() {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;

    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 20),
                  height: categoryHeight,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://www.wallpaperup.com/uploads/wallpapers/2017/09/23/1099623/db766f2e50b24851af6a36a23cba288c-700.jpg",
                          )),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 70),
                          child: Text(
                            "Meditations",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 20),
                  height: categoryHeight,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://c.pxhere.com/photos/42/a1/aurora_borealis_cabin_night_northern_lights_norway_snow_starry_sky_stars-1562337.jpg!d",
                          )),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 80),
                          child: Text(
                            "Dream Stories",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MusicScreen();
                    }));
                  },
                  child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480x272/public/media/image/2017/10/267401-wallpaper-hd.jpg?itok=77X5bRba",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 80),
                            child: Text(
                              "Music",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
