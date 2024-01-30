import 'models/test_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/custom_elevated_button.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapHlavniStranka(context);
                          },
                          child: Container(
                              width: 267.h,
                              margin: EdgeInsets.only(left: 39.h, right: 28.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 72.h, vertical: 34.v),
                              decoration: AppDecoration.fillOnPrimaryContainer,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Text("lbl_login2".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]))),
                      SizedBox(height: 15.v),
                      GestureDetector(
                          onTap: () {
                            onTapHlavniStranka1(context);
                          },
                          child: Container(
                              width: 250.h,
                              margin: EdgeInsets.only(left: 39.h, right: 45.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 39.h, vertical: 21.v),
                              decoration: AppDecoration.fillOnPrimaryContainer,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 23.v),
                                    Text("lbl_hlavni_stranka".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]))),
                      SizedBox(height: 43.v),
                      _buildTestButton1(context),
                      SizedBox(height: 18.v),
                      _buildTestButton2(context),
                      SizedBox(height: 18.v),
                      _buildTestButton3(context),
                      SizedBox(height: 37.v),
                      _buildXxxxxxxButton(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildTestButton1(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_test_tla_itko".tr,
        margin: EdgeInsets.only(left: 53.h, right: 37.h));
  }

  /// Section Widget
  Widget _buildTestButton2(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_test_tla_itko".tr,
        margin: EdgeInsets.only(left: 53.h, right: 37.h));
  }

  /// Section Widget
  Widget _buildTestButton3(BuildContext context) {
    return CustomElevatedButton(
        height: 72.v,
        text: "lbl_test_tla_itko".tr,
        margin: EdgeInsets.only(right: 59.h),
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildXxxxxxxButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_xxxxxxx".tr, margin: EdgeInsets.symmetric(horizontal: 45.h));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapHlavniStranka(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapHlavniStranka1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
