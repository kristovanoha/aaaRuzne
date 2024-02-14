import '../hlavni_screen/widgets/zvady_item_widget.dart';
import 'models/hlavni_model.dart';
import 'models/zvady_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_leading_image.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'package:jlv_first/widgets/custom_elevated_button.dart';
import 'provider/hlavni_provider.dart';

class HlavniScreen extends StatefulWidget {
  const HlavniScreen({Key? key}) : super(key: key);

  @override
  HlavniScreenState createState() => HlavniScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HlavniProvider(), child: HlavniScreen());
  }
}

class HlavniScreenState extends State<HlavniScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 14.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildTwentyFive(context),
                              SizedBox(height: 16.v),
                              _buildTwentySeven(context),
                              SizedBox(height: 14.v),
                              Text("lbl_hlavn_nab_dka".tr,
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 13.v),
                              _buildZvady(context),
                              SizedBox(height: 36.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTEST(context);
                                  },
                                  child: Container(
                                      width: 224.h,
                                      margin: EdgeInsets.only(
                                          left: 48.h, right: 90.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40.h, vertical: 30.v),
                                      decoration:
                                          AppDecoration.fillOnPrimaryContainer,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 3.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Text("lbl_test".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallErrorContainer)),
                                            Text("lbl_do_testu".tr,
                                                style:
                                                    theme.textTheme.titleSmall)
                                          ]))),
                              SizedBox(height: 168.v),
                              CustomElevatedButton(
                                  width: 136.h,
                                  text: "lbl_button".tr,
                                  alignment: Alignment.center),
                              SizedBox(height: 110.v),
                              CustomElevatedButton(
                                  width: 136.h,
                                  text: "lbl_button".tr,
                                  margin: EdgeInsets.only(left: 103.h))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 30.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 38.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 9.h, top: 42.v, bottom: 10.v),
            child: Row(children: [
              AppbarSubtitleOne(text: "lbl_left_title".tr),
              AppbarSubtitle(
                  text: "lbl_title".tr, margin: EdgeInsets.only(left: 70.h))
            ])),
        actions: [
          AppbarTitle(
              text: "lbl_right_title".tr,
              margin: EdgeInsets.fromLTRB(15.h, 43.v, 15.h, 9.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTwentyFive(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 6.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 5.v),
            decoration: AppDecoration.outlineRedA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 21.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("lbl_1_1_2024_11_35".tr,
                                    style: theme.textTheme.bodySmall)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text("lbl_dispe_ink".tr,
                                    style: CustomTextStyles.bodySmallRedA700))
                          ])),
                  SizedBox(height: 6.v),
                  Text("msg_pozor_je_m_lo_sv_kov".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 7.v)
                ])));
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTwentySeven(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 6.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 3.v),
            decoration: AppDecoration.outlineLightGreenA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3.v, bottom: 8.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_1_1_2024".tr,
                                style: theme.textTheme.bodySmall),
                            SizedBox(height: 7.v),
                            Text("msg_bonusy_za_p_e_asy".tr,
                                style: theme.textTheme.bodySmall)
                          ])),
                  Padding(
                      padding: EdgeInsets.only(left: 37.h, bottom: 34.v),
                      child: Text("lbl_veden".tr,
                          style: CustomTextStyles.bodySmallLightgreenA700))
                ])));
  }

  /// Section Widget
  Widget _buildZvady(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Consumer<HlavniProvider>(builder: (context, provider, child) {
          return Wrap(
              runSpacing: 23.v,
              spacing: 23.h,
              children: List<Widget>.generate(
                  provider.hlavniModelObj.zvadyItemList.length, (index) {
                ZvadyItemModel model =
                    provider.hlavniModelObj.zvadyItemList[index];
                return ZvadyItemWidget(model, onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                });
              }));
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the detailzpravyScreen when the action is triggered.
  onTapTwentyFive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailzpravyScreen,
    );
  }

  /// Navigates to the detailzpravyScreen when the action is triggered.
  onTapTwentySeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailzpravyScreen,
    );
  }

  /// Navigates to the testScreen when the action is triggered.
  onTapTEST(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testScreen,
    );
  }
}
