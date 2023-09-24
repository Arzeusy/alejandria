import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: HeadProfile(),
    );
  }
}

