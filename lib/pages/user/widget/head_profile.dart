import 'package:flutter/material.dart';

import '../../../shared/widget/gradient_back.dart';

class HeadProfile extends StatelessWidget {
  
  const HeadProfile({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Stack(
          children: [
            const GradienBack(heightGradient: 150.0, title: '',),
            Container(
              margin:  const EdgeInsets.only(top: 30.0, left: 15.0),
              child:  Row(children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white), // Icono de configuración personalizado
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Spacer(), 
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white), // Icono de configuración personalizado
                  onPressed: () {
                  },
                ),
              ],)
            ),
            Container(
              margin: const EdgeInsets.only(top: 100.0, right: 20.0, left: 15.0),
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.0),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Jason_Momoa_%2843055621224%29_%28cropped%29.jpg/800px-Jason_Momoa_%2843055621224%29_%28cropped%29.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              
            )
          ],
        ),
        const ListTile(
          title: Text(
            "Yeicob Calderon",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black, 
              fontWeight: FontWeight.bold ),
          ),
          subtitle: Text(
            "@Arzeusy",
            style: TextStyle(
              fontSize: 15.0,
              color: Color(0xFF424242), 
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ]);

  }

}