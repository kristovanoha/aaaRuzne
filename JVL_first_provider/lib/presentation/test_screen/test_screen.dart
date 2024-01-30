import 'models/test_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'provider/test_provider.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  TestScreenState createState() => TestScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TestProvider(), child: TestScreen());
  }
}

class TestScreenState extends State<TestScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 40.h, vertical: 108.v),
                child: Column(children: [
                  GestureDetector(
                      onTap: () {
                        onTapLogin(context);
                      },
                      child: Container(
                          width: 267.h,
                          margin: EdgeInsets.only(left: 27.h, right: 16.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 45.h, vertical: 28.v),
                          decoration: AppDecoration.fillPrimaryContainer,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 19.v),
                                Text("lbl_login".tr,
                                    style: CustomTextStyles.bodySmallBlack900)
                              ]))),
                  Spacer(flex: 27),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapHlavniStranka(context);
                          },
                          child: Container(
                              width: 250.h,
                              margin: EdgeInsets.only(left: 60.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 45.h, vertical: 24.v),
                              decoration: AppDecoration.fillPrimaryContainer,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20.v),
                                    Text("lbl_hlavni_stranka".tr,
                                        style:
                                            CustomTextStyles.bodySmallBlack900)
                                  ])))),
                  Spacer(flex: 72)
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapHlavniStranka(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
