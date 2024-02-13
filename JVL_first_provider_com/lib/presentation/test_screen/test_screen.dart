import 'models/test_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/custom_elevated_button.dart';
import 'package:jlv_first/widgets/custom_text_form_field.dart';
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
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildButtonWidget(context),
                      SizedBox(height: 18.v),
                      _buildButtonOneWidget(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapHlavniStranka(context);
                              },
                              child: Container(
                                  width: 221.h,
                                  margin:
                                      EdgeInsets.only(left: 31.h, right: 66.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 39.h, vertical: 16.v),
                                  decoration:
                                      AppDecoration.fillOnPrimaryContainer,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 4.v),
                                        Text("lbl_hlavni_stranka".tr,
                                            style: theme.textTheme.bodyMedium)
                                      ])))),
                      SizedBox(height: 15.v),
                      _buildButtonWidget1(context),
                      SizedBox(height: 23.v),
                      _buildTestDdfWidget(context),
                      SizedBox(height: 5.v),
                      _buildTestDdfWidget1(context),
                      SizedBox(height: 5.v),
                      _buildTestDdfWidget2(context),
                      SizedBox(height: 25.v),
                      _buildXxxxxxxWidget(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildButtonWidget(BuildContext context) {
    return CustomElevatedButton(
        height: 71.v,
        width: 136.h,
        text: "lbl_button1",
        buttonStyle: CustomButtonStyles.fillOnError,
        buttonTextStyle: CustomTextStyles.displaySmallErrorContainer,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildButtonWidget1(BuildContext context) {
    return CustomElevatedButton(
        height: 71.v,
        width: 136.h,
        text: "Bbutton 22",
        margin: EdgeInsets.only(right: 54.h),
        buttonStyle: CustomButtonStyles.fillOnError,
        buttonTextStyle: CustomTextStyles.displaySmallErrorContainer);
  }


  /// Section Widget
  Widget _buildButtonOneWidget(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 31.h, right: 20.h),
        child: Selector<TestProvider, TextEditingController?>(
            selector: (context, provider) => provider.buttonOneWidgetController,
            builder: (context, buttonOneWidgetController, child) {
              return CustomTextFormField(
                  controller: buttonOneWidgetController,
                  hintText: "lbl_login2".tr,
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 36.v),
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnPrimaryContainer,
                  fillColor: theme.colorScheme.onPrimaryContainer);
            }));
  }



  /// Section Widget
  Widget _buildTestDdfWidget(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_test_ddf".tr,
        margin: EdgeInsets.only(left: 59.h, right: 15.h));
  }

  /// Section Widget
  Widget _buildTestDdfWidget1(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_test_ddf".tr, margin: EdgeInsets.only(left: 74.h));
  }

  /// Section Widget
  Widget _buildTestDdfWidget2(BuildContext context) {
    return CustomElevatedButton(
        height: 72.v,
        text: "lbl_test_ddf".tr,
        margin: EdgeInsets.only(left: 43.h));
  }

  /// Section Widget
  Widget _buildXxxxxxxWidget(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_xxxxxxx".tr,
        margin: EdgeInsets.symmetric(horizontal: 37.h),
        alignment: Alignment.center);
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapHlavniStranka(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
