import 'models/detailzpravy_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_leading_image.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'package:jlv_first/widgets/custom_outlined_button.dart';
import 'package:jlv_first/widgets/custom_text_form_field.dart';
import 'provider/detailzpravy_provider.dart';

class DetailzpravyScreen extends StatefulWidget {
  const DetailzpravyScreen({Key? key}) : super(key: key);

  @override
  DetailzpravyScreenState createState() => DetailzpravyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DetailzpravyProvider(),
        child: DetailzpravyScreen());
  }
}

class DetailzpravyScreenState extends State<DetailzpravyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
                child: Column(children: [
                  _buildAdresatStack(context),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_p_edm_t".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 4.v),
                  _buildRjddThirtyFourEditText(context),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_adres_ti".tr,
                              style: theme.textTheme.labelLarge))),
                  _buildThirtyFiveEditText(context),
                  SizedBox(height: 19.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_text_zpr_vy".tr,
                              style: theme.textTheme.labelLarge))),
                  _buildOhnutaNohaEditText(context),
                  SizedBox(height: 25.v),
                  _buildOdeslatRow(context),
                  SizedBox(height: 5.v)
                ]))));
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
  Widget _buildAdresatButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 145.h, text: "lbl_adres_t".tr, alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildAdresatStack(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 15.v, bottom: 17.v),
              child: Text("lbl_detail_zpr_vy".tr,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(
              height: 62.v,
              width: 145.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                _buildAdresatButton(context),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Text("lbl".tr,
                            style: theme.textTheme.displayMedium)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildRjddThirtyFourEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Selector<DetailzpravyProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.rjddThirtyFourEditTextController,
            builder: (context, rjddThirtyFourEditTextController, child) {
              return CustomTextFormField(
                  controller: rjddThirtyFourEditTextController,
                  hintText: "msg_rj_888000dd_34".tr);
            }));
  }

  /// Section Widget
  Widget _buildThirtyFiveEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 12.h),
        child: Selector<DetailzpravyProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.thirtyFiveEditTextController,
            builder: (context, thirtyFiveEditTextController, child) {
              return CustomTextFormField(
                  controller: thirtyFiveEditTextController,
                  hintText: "msg_dispe_ink_jv_tech".tr);
            }));
  }

  /// Section Widget
  Widget _buildOhnutaNohaEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Selector<DetailzpravyProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.ohnutaNohaEditTextController,
            builder: (context, ohnutaNohaEditTextController, child) {
              return CustomTextFormField(
                  controller: ohnutaNohaEditTextController,
                  hintText: "msg_ohnut_noha_od_klienta".tr,
                  textInputAction: TextInputAction.done,
                  maxLines: 10,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 17.v));
            }));
  }

  /// Section Widget
  Widget _buildOdeslatRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildFortyTwoStack(context,
              cancelButton: "lbl_odeslat".tr,
              closeButton: "lbl".tr, onTapFortyTwoStack: () {
            onTapFortyTwoStack(context);
          }),
          _buildFortyTwoStack(context,
              cancelButton: "lbl_zru_it".tr,
              closeButton: "lbl_x2".tr, onTapFortyTwoStack: () {
            onTapFortyTwoStack1(context);
          })
        ]));
  }

  /// Common widget
  Widget _buildFortyTwoStack(
    BuildContext context, {
    required String cancelButton,
    required String closeButton,
    Function? onTapFortyTwoStack,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFortyTwoStack!.call();
        },
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Container(
                height: 60.v,
                width: 176.h,
                decoration: AppDecoration.outlineBlack
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.h, vertical: 19.v),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Text(cancelButton,
                              style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.primary)))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text(closeButton,
                              style: theme.textTheme.displayMedium!
                                  .copyWith(color: appTheme.black900))))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the seznamzpravScreen when the action is triggered.
  onTapFortyTwoStack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seznamzpravScreen,
    );
  }

  /// Navigates to the seznamzpravScreen when the action is triggered.
  onTapFortyTwoStack1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seznamzpravScreen,
    );
  }
}
