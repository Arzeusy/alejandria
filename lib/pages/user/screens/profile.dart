import 'package:flutter/material.dart';

import '../../../shared/widget/achievement.dart';
import '../widget/head_profile.dart';


class ProfilePage extends StatefulWidget {

  const ProfilePage({
    Key? key,
  }) : super(key: key);


  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children:  [
          const HeadProfile(),
          Row(
            children: [
              // Primer widget ocupando 2 espacios
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(18.0),
                  height: 110.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                        Text(
                          "Course",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black54, 
                            fontWeight: FontWeight.bold ),
                        ),
                        Text(
                          "Greek 1",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Module 1",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black54, 
                            fontWeight: FontWeight.bold ),
                        ),
                        Text(
                          "Declensions",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                    ],
                  )
                ),
              ),
              // Segundo widget ocupando 1 espacio
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 110.0,
                  child: Center(
                    child:  AchievementWidget(
                      achievementName: 'Logro 1',
                      progress: 0.35,
                      icon: Icons.star,
                      backgroundColor: Colors.blueGrey,
                      width: 60.0,
                      height: 60.0,
                      progressBarColor: Colors.blue,
                    ),
                  ),
                ),
              ),
              // Tercer widget ocupando 1 espacio
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 110.0,
                  child: Center(
                    child: AchievementWidget(
                      achievementName: 'Logro 1',
                      progress: 0.35,
                      icon: Icons.star,
                      backgroundColor: Colors.blueGrey,
                      width: 60.0,
                      height: 60.0,
                      progressBarColor: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
