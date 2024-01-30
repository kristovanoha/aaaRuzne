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
                padding: EdgeInsets.only(left: 38.h, top: 108.v, right: 38.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapLogin(context);
                              },
                              child: Container(
                                  width: 267.h,
                                  margin:
                                      EdgeInsets.only(left: 29.h, right: 18.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 45.h, vertical: 28.v),
                                  decoration:
                                      AppDecoration.fillPrimaryContainer,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 19.v),
                                        Text("lbl_login".tr,
                                            style: CustomTextStyles
                                                .bodySmallBlack900)
                                      ])))),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: EdgeInsets.only(left: 29.h, right: 35.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 70.h, vertical: 28.v),
                              decoration: AppDecoration.fillPrimaryContainer,
                              child: Column(children: [
                                SizedBox(height: 13.v),
                                Text("lbl_hlavni_stranka".tr,
                                    style: CustomTextStyles.bodySmallBlack900)
                              ]))),
                      SizedBox(height: 43.v),
                      CustomElevatedButton(
                          text: "lbl_test_tla_itko".tr,
                          margin: EdgeInsets.only(left: 29.h, right: 63.h)),
                      SizedBox(height: 71.v),
                      CustomElevatedButton(
                          text: "lbl_test_tla_itko".tr,
                          margin: EdgeInsets.only(left: 4.h, right: 88.h)),
                      SizedBox(height: 43.v),
                      CustomElevatedButton(
                          height: 72.v,
                          text: "lbl_test_tla_itko".tr,
                          margin: EdgeInsets.only(left: 39.h),
                          alignment: Alignment.centerRight),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
