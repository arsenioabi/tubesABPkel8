import 'package:flutter/material.dart';
import 'package:kuylinary/core/app/app.dart';
import 'package:kuylinary/core/app/constant.dart';
import 'package:kuylinary/core/util/util.dart';
import 'package:kuylinary/ui/component.dart';
import 'package:kuylinary/ui/login/login_view.dart';
import 'package:kuylinary/ui/register/register_view.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorPalette.teal,
      body: Padding(
        padding: Constant.paddingScreen,
        child: ListView(
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 20,
            ),
            Component.textBold("Welcome To KuyLinary",
                fontSize: 55, colors: ColorPalette.black),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 20,
            ),
            Component.textBold("Get Started",
                fontSize: 20, colors: ColorPalette.black),
            const SizedBox(
              height: 20,
            ),
            Component.button(
                label: "Login",
                onPressed: () {
                  routePush(LoginView(), RouterType.material);
                }),
            const SizedBox(
              height: 20,
            ),
            Component.button(
                label: "Register",
                onPressed: () {
                  routePush(Register(), RouterType.material);
                }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
