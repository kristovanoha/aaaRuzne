import 'models/druhy_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/custom_text_form_field.dart';
import 'provider/druhy_provider.dart';

class DruhyScreen extends StatefulWidget {
  const DruhyScreen({Key? key}) : super(key: key);

  @override
  DruhyScreenState createState() => DruhyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DruhyProvider(), child: DruhyScreen());
  }
}

class DruhyScreenState extends State<DruhyScreen> {
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
                width: 387.h,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 28.v),
                child: Column(children: [
                  SizedBox(height: 64.v),
                  _buildTwentyFive(context),
                  SizedBox(height: 16.v),
                  _buildTwentySeven(context),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_hlavn_nab_dka".tr,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 13.v),
                  _buildFaultsRow(context)
                ])),
            bottomNavigationBar: _buildSetTemperature1(context)));
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTwentyFive(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 5.v),
            decoration: AppDecoration.outlineRedA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 24.h),
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
            margin: EdgeInsets.only(right: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 3.v),
            decoration: AppDecoration.outlineLightGreenA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 46.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("lbl_1_1_2024".tr,
                                    style: theme.textTheme.bodySmall)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text("lbl_veden".tr,
                                    style: CustomTextStyles
                                        .bodySmallLightgreenA700))
                          ])),
                  SizedBox(height: 7.v),
                  Text("msg_bonusy_za_p_e_asy".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 8.v)
                ])));
  }

  /// Section Widget
  Widget _buildFaults(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Selector<DruhyProvider, TextEditingController?>(
                selector: (context, provider) => provider.faultsController,
                builder: (context, faultsController, child) {
                  return CustomTextFormField(
                      controller: faultsController,
                      hintText: "lbl_z_vady".tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 26.v));
                })));
  }

  /// Section Widget
  Widget _buildCarCard(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Selector<DruhyProvider, TextEditingController?>(
                selector: (context, provider) => provider.carCardController,
                builder: (context, carCardController, child) {
                  return CustomTextFormField(
                      controller: carCardController,
                      hintText: "lbl_karta_vozu".tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 26.v));
                })));
  }

  /// Section Widget
  Widget _buildFaultsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildFaults(context), _buildCarCard(context)]));
  }

  /// Section Widget
  Widget _buildSetTemperature(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Selector<DruhyProvider, TextEditingController?>(
                selector: (context, provider) =>
                    provider.setTemperatureController,
                builder: (context, setTemperatureController, child) {
                  return CustomTextFormField(
                      controller: setTemperatureController,
                      hintText: "lbl_zadat_teplotu".tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 26.v));
                })));
  }

  /// Section Widget
  Widget _buildMessages(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Selector<DruhyProvider, TextEditingController?>(
                selector: (context, provider) => provider.messagesController,
                builder: (context, messagesController, child) {
                  return CustomTextFormField(
                      controller: messagesController,
                      hintText: "lbl_zpr_vy".tr,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 26.v));
                })));
  }

  /// Section Widget
  Widget _buildSetTemperature1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 18.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildSetTemperature(context),
          _buildMessages(context)
        ]));
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
}
