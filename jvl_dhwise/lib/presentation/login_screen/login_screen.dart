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
    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   NavigatorService.popAndPushNamed(
    //     AppRoutes.hlavniScreen,
    //   );
    // });
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
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 7.h),
                        child: Column(children: [
                          _buildOscisloEditText(context),
                          SizedBox(height: 25.v),
                          _buildHeslovalueEditText(context),
                          SizedBox(height: 18.v),
                          _buildISDISPTechVerText(context),
                          SizedBox(height: 32.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 84.h),
                                  child: Text("msg_zapomenut_heslo".tr,
                                      style: CustomTextStyles
                                          .bodyLargeLexendExaGray900))),
                          SizedBox(height: 74.v),
                          SizedBox(
                              width: 111.h,
                              child: Text("msg_podpora_support_jlv_cz_420".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodySmallErrorContainer)),
                          SizedBox(height: 38.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: 153.h,
                                  margin: EdgeInsets.only(right: 97.h),
                                  child: Text("msg_isdisp_tech_ver".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallErrorContainer))),
                          SizedBox(height: 10.v),
                          _buildHEROColumn(context),
                          SizedBox(height: 25.v),
                          _buildHexxButton(context)
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
  Widget _buildOscisloEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Selector<LoginProvider, TextEditingController?>(
            selector: (context, provider) => provider.oscisloEditTextController,
            builder: (context, oscisloEditTextController, child) {
              return CustomTextFormField(
                  controller: oscisloEditTextController,
                  hintText: "lbl_os_slo".tr,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v));
            }));
  }

  /// Section Widget
  Widget _buildHeslovalueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Selector<LoginProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.heslovalueEditTextController,
            builder: (context, heslovalueEditTextController, child) {
              return CustomTextFormField(
                  controller: heslovalueEditTextController,
                  hintText: "lbl_heslo".tr,
                  textInputAction: TextInputAction.done,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v),
                  borderDecoration: TextFormFieldStyleHelper.fillGray);
            }));
  }

  /// Section Widget
  Widget _buildISDISPTechVerText(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        text: "lbl_p_ihl_sit_se".tr,
        margin: EdgeInsets.symmetric(horizontal: 11.h),
        buttonStyle: CustomButtonStyles.fillLightBlue,
        buttonTextStyle: CustomTextStyles.bodySmallWhiteA700,
        onPressed: () {
          onTapISDISPTechVerText(context);
        });
  }

  /// Section Widget
  Widget _buildHEROButton(BuildContext context) {
    return CustomElevatedButton(
        height: 76.v,
        width: 177.h,
        text: "lbl_hero".tr,
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildHExxButton(BuildContext context) {
    return CustomElevatedButton(
        width: 136.h,
        text: "lbl_hexx".tr,
        margin: EdgeInsets.only(right: 6.h),
        alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildHEROButton1(BuildContext context) {
    return CustomElevatedButton(
        height: 76.v,
        width: 177.h,
        text: "lbl_hero".tr,
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildHEROColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 7.v, right: 9.h),
                      child: Column(children: [
                        _buildHEROButton(context),
                        SizedBox(height: 20.v),
                        _buildHExxButton(context)
                      ]))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.h, bottom: 35.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              
                                padding: EdgeInsets.only(left: 10.h),
                                
                                child: Container(
                                  color:Colors.pink,
                                  child: Text("lbl_test3".tr,
                                  
                                      style: theme.textTheme.displaySmall),
                                )),
                            SizedBox(height: 18.v),
                            _buildHEROButton1(context)
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildHexxButton(BuildContext context) {
    return CustomElevatedButton(
        height: 51.v,
        text: "lbl_hexx2".tr,
        margin: EdgeInsets.only(left: 32.h, right: 33.h));
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapISDISPTechVerText(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
