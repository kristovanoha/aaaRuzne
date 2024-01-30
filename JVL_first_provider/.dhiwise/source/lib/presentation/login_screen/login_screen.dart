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
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Column(children: [
                          Selector<LoginProvider, TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.oscisloController,
                              builder: (context, oscisloController, child) {
                                return CustomTextFormField(
                                    controller: oscisloController,
                                    hintText: "lbl_os_slo".tr,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14.h, vertical: 18.v));
                              }),
                          SizedBox(height: 25.v),
                          Selector<LoginProvider, TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.heslovalueController,
                              builder: (context, heslovalueController, child) {
                                return CustomTextFormField(
                                    controller: heslovalueController,
                                    hintText: "lbl_heslo".tr,
                                    textInputAction: TextInputAction.done,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14.h, vertical: 18.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillGray);
                              }),
                          SizedBox(height: 18.v),
                          CustomElevatedButton(
                              text: "lbl_p_ihl_sit_se".tr,
                              onPressed: () {
                                onTapPihlsitSe(context);
                              },
                              alignment: Alignment.topLeft),
                          SizedBox(height: 37.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_zapomenut_heslo".tr,
                                  style: CustomTextStyles.bodySmallBlack900)),
                          SizedBox(height: 74.v),
                          SizedBox(
                              width: 111.h,
                              child: Text("msg_podpora_support_jlv_cz_420".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallBlack900)),
                          SizedBox(height: 38.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: 153.h,
                                  margin: EdgeInsets.only(right: 86.h),
                                  child: Text("msg_isdisp_tech_ver".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          CustomTextStyles.bodySmallBlack900)))
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

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapPihlsitSe(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
