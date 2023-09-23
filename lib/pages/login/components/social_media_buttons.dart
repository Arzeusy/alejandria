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


// https://lh3.googleusercontent.com/a/AGNmyxYYHgdfePiohibpQWCvmDkgD8i2a71hww0pd5yx=s96-c, 
// aud: 869005261360-et7rnv3tv9nq0d04oqvje8sfukrr5148.apps.googleusercontent.com, 
// azp: 869005261360-pj0j85e1qaaokapjqtnjtdn83tb10321.apps.googleusercontent.com, 
// exp: 1684796477, 
// iat: 1684792877, 
// iss: https://accounts.google.com, sub: 102539440613585092306, 
// name: Arzeus -Y, 
// email: jkob1994@gmail.com, 
// email_verified: true}, 
// providerId: google.com, 
// username: null), 
// credential: AuthCredential(providerId: google.com, signInMethod: google.com, token: 167179972, accessToken: ya29.a0AWY7Ckk3bhXUAgHyVAS5g20kMTJROk6IOL2_KrIkDS2x0B_H8FF-7OeKPGLKCXf0Th_Z3DHIMmmT8FG65imUNvog2SQSZXh6cR-Y5grmM0OQ24tBoD1JftQgopdcrxT5naM7-5wS-B5PLdqTv7WuCkAhT83QaCgYKAZ0SARESFQG1tDrpkxnNz1zgQqVL6iXONmj9Uw0163), 
// user: User(displayName: Arzeus -Y, email: jkob1994@gmail.com, emailVerified: true, isAnonymous: fals