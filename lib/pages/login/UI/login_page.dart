// ignore_for_file: unused_field

import 'package:alejandria/shared/widget/password_field.dart';
import 'package:alejandria/shared/widget/textbox_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/widget/button.dart';
import '../../../shared/widget/divider_text.dart';
import '../components/social_media_buttons.dart';
import '../model/login_model.dart';
import '../repository/firebase_auth.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  late LoginPageModel _model;

  @override
  void initState() {
    super.initState();
    _model = LoginPageModel();
    _model.userNameField ??= TextEditingController();
    _model.passwordField ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();
    _unfocusNode.dispose();
    super.dispose();
  }

  handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    await Auth().signInWithEmail(_model.toJson());
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: const Color(0xFF0A2B3B),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.zero,
              child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: SvgPicture.asset(
                        "assets/svg/Group317.svg",
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                        fit: BoxFit.fill,
                      ))),
            ),
            Align(
                alignment: const AlignmentDirectional(0, 1),
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: SvgPicture.asset(
                    'assets/svg/Group318.svg',
                    fit: BoxFit.cover,
                  ),
                )),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Container(
                  width: 323,
                  height: 442.9,
                  decoration: const BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'Hello again!',
                            style: TextStyle(
                              color: Colors.white,
                              // fontFamily: 'Inter',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextBoxField(
                          text: 'User',
                          icon: Icons.person,
                          obscureTextVal: false,
                          model: _model.userNameField,
                          validator: LoginPageModel.validateName,
                        ),
                        PassWordField(
                          text: 'Password',
                          model: _model.passwordField,
                          validator: LoginPageModel.validatePassword,
                        ),
                        Button(
                          text: 'Login my account',
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              handleSubmit();
                            }
                          },
                        ),
                        // const Divider(thickness: 3, color: Colors.white),
                        const DividerWithText(text: 'OR', dividerThickness: 3),
                        const SocialMediaButtons()
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
