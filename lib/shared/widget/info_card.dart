import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback press;

  const InfoCard({
    super.key,
    required this.title,
    required this.press,
    this.subTitle = "",
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        press();
        Navigator.pushNamed(context, 'user/profile');
      },
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.white24,
          child: Icon(
            CupertinoIcons.person,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
