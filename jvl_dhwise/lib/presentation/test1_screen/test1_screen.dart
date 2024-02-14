import 'models/test1_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'provider/test1_provider.dart';

class Test1Screen extends StatefulWidget {
  const Test1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Test1ScreenState createState() => Test1ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Test1Provider(),
      child: Test1Screen(),
    );
  }
}

class Test1ScreenState extends State<Test1Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 360.h,
          padding: EdgeInsets.symmetric(vertical: 93.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_normal".tr,
                style: CustomTextStyles.bodyLargeLobsterTwoErrorContainer,
              ),
              Spacer(
                flex: 49,
              ),
              Text(
                "lbl_normal".tr,
                style: CustomTextStyles.bodyLargeLobsterTwoErrorContainer,
              ),
              Spacer(
                flex: 50,
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_velky".tr,
                  style: CustomTextStyles.displayMediumLobsterTwo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
