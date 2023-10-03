import 'package:alejandria/shared/widget/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../repository/firebase_auth.dart';

// ignore: must_be_immutable
class SocialMediaButtons extends StatefulWidget {
  const SocialMediaButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SocialMediaButtonsState();
  }
}

class _SocialMediaButtonsState extends State<SocialMediaButtons> {
  bool favState = false;

  void onPressedFav() {
    setState(() {
      favState = !favState;
    });
  }

  handleSubmit() async {
    await Auth().signInWithGoogle();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButtonWidget(
            colorValue: Colors.white,
            icon: FontAwesomeIcons.facebookF,
            onPress: () {}),
        IconButtonWidget(
            colorValue: Colors.white,
            icon: FontAwesomeIcons.google,
            onPress: () {
              handleSubmit();
            }),
        IconButtonWidget(
            colorValue: Colors.white,
            icon: FontAwesomeIcons.apple,
            onPress: () {}),

        // FlutterFlowIconButton(
        //   borderColor: Colors.transparent,
        //   borderRadius: 10,
        //   borderWidth: 1,
        //   buttonSize: 40,
        //   fillColor: Colors.white,
        //   icon: FaIcon(
        //     FontAwesomeIcons.google,
        //     color: FlutterFlowTheme.of(context).primaryText,
        //     size: 20,
        //   ),
        //   onPressed: () {
        //     print('IconButton pressed ...');
        //   },
        // )
      ],
    );
  }
}
