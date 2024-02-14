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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Container(
                        height: 691.v,
                        width: 365.h,
                        margin: EdgeInsets.only(
                            left: 18.h, right: 7.h, bottom: 5.v),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  height: 214.v,
                                  width: 307.h,
                                  margin:
                                      EdgeInsets.only(left: 7.h, bottom: 76.v),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 107.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                          width: 153.h,
                                                          child: Text(
                                                              "msg_isdisp_tech_ver"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodySmallBlack900)),
                                                      SizedBox(height: 10.v),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text(
                                                              "lbl_test3".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 151.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      _buildHeroButton(context),
                                                      SizedBox(height: 18.v),
                                                      _buildHexxButton(context)
                                                    ])))
                                      ]))),
                          _buildOscislo(context),
                          _buildHexx2Button(context),
                          _buildHeroButton1(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 91.v,
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgImage1,
            margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildHeroButton(BuildContext context) {
    return CustomElevatedButton(
        height: 83.v,
        width: 64.h,
        text: "",
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildHexxButton(BuildContext context) {
    return CustomElevatedButton(
        width: 136.h,
        text: "lbl_hexx".tr,
        buttonTextStyle: theme.textTheme.displaySmall!,
        alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildOscisloEditText(BuildContext context) {
    return Selector<LoginProvider, TextEditingController?>(
        selector: (context, provider) => provider.oscisloEditTextController,
        builder: (context, oscisloEditTextController, child) {
          return CustomTextFormField(
              controller: oscisloEditTextController,
              hintText: "lbl_os_slo".tr,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v));
        });
  }

  /// Section Widget
  Widget _buildHeslovalueEditText(BuildContext context) {
    return Selector<LoginProvider, TextEditingController?>(
        selector: (context, provider) => provider.heslovalueEditTextController,
        builder: (context, heslovalueEditTextController, child) {
          return CustomTextFormField(
              controller: heslovalueEditTextController,
              hintText: "lbl_heslo".tr,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray);
        });
  }

  /// Section Widget
  Widget _buildPihlsitSeButton(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        text: "lbl_p_ihl_sit_se".tr,
        buttonStyle: CustomButtonStyles.fillLightBlue,
        buttonTextStyle: CustomTextStyles.bodySmallWhiteA700,
        onPressed: () {
          onTapPihlsitSeButton(context);
        });
  }

  /// Section Widget
  Widget _buildOscislo(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _buildOscisloEditText(context),
              SizedBox(height: 25.v),
              _buildHeslovalueEditText(context),
              SizedBox(height: 18.v),
              _buildPihlsitSeButton(context),
              SizedBox(height: 32.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 73.h),
                      child: Text("msg_zapomenut_heslo".tr,
                          style: CustomTextStyles.bodyLargeLexendExaGray900))),
              SizedBox(height: 74.v),
              SizedBox(
                  width: 111.h,
                  child: Text("msg_podpora_support_jlv_cz_420".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallBlack900))
            ])));
  }

  /// Section Widget
  Widget _buildHexx2Button(BuildContext context) {
    return CustomElevatedButton(
        height: 51.v,
        width: 311.h,
        text: "lbl_hexx2".tr,
        margin: EdgeInsets.only(left: 21.h),
        buttonTextStyle: theme.textTheme.displaySmall!,
        alignment: Alignment.bottomLeft);
  }

  /// Section Widget
  Widget _buildHeroButton1(BuildContext context) {
    return CustomElevatedButton(
        height: 76.v,
        width: 177.h,
        text: "lbl_hero".tr,
        margin: EdgeInsets.only(bottom: 111.v),
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: theme.textTheme.displaySmall!,
        alignment: Alignment.bottomRight);
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapPihlsitSeButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
