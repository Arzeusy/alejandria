import 'package:flutter/material.dart';

class GradienBack extends StatelessWidget {
  
  final String title;
  final double? heightGradient;

  const GradienBack({
    super.key,
    required this.title,
    required this.heightGradient,
  });


  @override
  Widget build(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidht,
      height: heightGradient,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            Color(0xFF0A2B3B),
            Color(0xFF416788),
          ],
          begin: FractionalOffset(0.3, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          FittedBox(
            fit: BoxFit.none,
            alignment: const Alignment(-1.5,-0.8),
            child: Container(
              width: screenHeight,
              height: screenHeight,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.03),
                borderRadius: BorderRadius.circular(screenHeight / 2),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          
        ],
      ) 
      //alignment: const Alignment(-0.9, -0.6),
    );
  }

}