import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title_image.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'package:jlv_first/widgets/custom_elevated_button.dart';
import 'package:jlv_first/widgets/custom_text_form_field.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.hlavniScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              child: Column(children: [
                                _buildLoginEditTextOne(context),
                                SizedBox(height: 25.v),
                                _buildLoginEditTextTwo(context),
                                SizedBox(height: 18.v),
                                _buildLoginButton(context),
                                SizedBox(height: 32.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 73.h),
                                        child: Text("msg_zapomenut_heslo".tr,
                                            style: CustomTextStyles
                                                .bodyLargeLexendExaGray900))),
                                SizedBox(height: 74.v),
                                SizedBox(
                                    width: 111.h,
                                    child: Text(
                                        "msg_podpora_support_jlv_cz_420".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallErrorContainer)),
                                SizedBox(height: 38.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: 153.h,
                                        margin: EdgeInsets.only(right: 86.h),
                                        child: Text("msg_isdisp_tech_ver".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallErrorContainer))),
                                SizedBox(height: 68.v),
                                _buildLoginButtonTwo(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildHexxButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 64.v,
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgImage1,
            margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildLoginEditTextOne(BuildContext context) {
    return Selector<LoginProvider, TextEditingController?>(
        selector: (context, provider) => provider.loginEditTextOneController,
        builder: (context, loginEditTextOneController, child) {
          return CustomTextFormField(
              controller: loginEditTextOneController,
              hintText: "lbl_os_slo".tr,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v));
        });
  }

  /// Section Widget
  Widget _buildLoginEditTextTwo(BuildContext context) {
    return Selector<LoginProvider, TextEditingController?>(
        selector: (context, provider) => provider.loginEditTextTwoController,
        builder: (context, loginEditTextTwoController, child) {
          return CustomTextFormField(
              controller: loginEditTextTwoController,
              hintText: "lbl_heslo".tr,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray);
        });
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        text: "lbl_p_ihl_sit_se".tr,
        buttonStyle: CustomButtonStyles.fillLightBlue,
        buttonTextStyle: CustomTextStyles.bodySmallWhiteA700,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildLoginButtonTwo(BuildContext context) {
    return CustomElevatedButton(width: 136.h, text: "lbl_hexx".tr);
  }

  /// Section Widget
  Widget _buildHexxButton(BuildContext context) {
    return CustomElevatedButton(
        height: 51.v,
        text: "lbl_hexx2".tr,
        margin: EdgeInsets.only(left: 39.h, right: 40.h, bottom: 57.v));
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
