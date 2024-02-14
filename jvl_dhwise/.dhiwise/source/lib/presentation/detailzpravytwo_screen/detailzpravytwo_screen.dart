import 'models/detailzpravytwo_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_leading_image.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'package:jlv_first/widgets/custom_outlined_button.dart';
import 'package:jlv_first/widgets/custom_text_form_field.dart';
import 'provider/detailzpravytwo_provider.dart';

class DetailzpravytwoScreen extends StatefulWidget {
  const DetailzpravytwoScreen({Key? key}) : super(key: key);

  @override
  DetailzpravytwoScreenState createState() => DetailzpravytwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DetailzpravytwoProvider(),
        child: DetailzpravytwoScreen());
  }
}

class DetailzpravytwoScreenState extends State<DetailzpravytwoScreen> {
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDeviceStack(context),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_as_m_en".tr,
                              style: theme.textTheme.labelLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, right: 84.h),
                          child: Row(children: [
                            _buildDateTimeEditText(context),
                            _buildDateTimeButton(context)
                          ])),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h, right: 72.h),
                          child: Row(children: [
                            _buildMinusButton(context),
                            Container(
                                margin: EdgeInsets.only(left: 9.h),
                                padding: EdgeInsets.symmetric(horizontal: 32.h),
                                decoration: AppDecoration.outlineLightblue900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 14.v),
                                      Text("lbl_8".tr,
                                          style: CustomTextStyles
                                              .displayMediumLightblue900)
                                    ])),
                            _buildPlusButton(context)
                          ])),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text("lbl_pozn_mka".tr,
                              style: theme.textTheme.labelLarge)),
                      _buildNoteValueEditText(context),
                      SizedBox(height: 25.v),
                      _buildSendRow(context),
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
  Widget _buildDeviceButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 145.h, text: "lbl_za_zen".tr, alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildDeviceColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text("lbl_za_zen".tr,
                          style: theme.textTheme.labelLarge)),
                  SizedBox(height: 6.v),
                  Selector<DetailzpravytwoProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.chladnikaKuchyController,
                      builder: (context, chladnikaKuchyController, child) {
                        return CustomTextFormField(
                            controller: chladnikaKuchyController,
                            hintText: "msg_chladni_ka_kuchy".tr);
                      })
                ])));
  }

  /// Section Widget
  Widget _buildDeviceStack(BuildContext context) {
    return Container(
        height: 108.v,
        width: 364.h,
        margin: EdgeInsets.only(left: 8.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 15.v),
                  child: Text("lbl_m_en_teploty".tr,
                      style: theme.textTheme.headlineSmall))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 108.v,
                  width: 364.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    _buildDeviceButton(context),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 2.v, right: 96.h),
                            child: Text("lbl".tr,
                                style: theme.textTheme.displayMedium))),
                    _buildDeviceColumn(context)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildDateTimeEditText(BuildContext context) {
    return Expanded(
        child: Selector<DetailzpravytwoProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.dateTimeEditTextController,
            builder: (context, dateTimeEditTextController, child) {
              return CustomTextFormField(
                  controller: dateTimeEditTextController,
                  hintText: "lbl_24_1_2024_12_30".tr);
            }));
  }

  /// Section Widget
  Widget _buildDateTimeButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 29.v,
        width: 61.h,
        text: "lbl_nyn".tr,
        margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildMinusButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 74.v,
        width: 82.h,
        text: "lbl2".tr,
        buttonStyle: CustomButtonStyles.outlineLightBlueTL10,
        buttonTextStyle: CustomTextStyles.displayMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildPlusButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 74.v,
        width: 82.h,
        text: "lbl".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.outlineLightBlueTL10,
        buttonTextStyle: CustomTextStyles.displayMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildNoteValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 9.h),
        child: Selector<DetailzpravytwoProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.noteValueEditTextController,
            builder: (context, noteValueEditTextController, child) {
              return CustomTextFormField(
                  controller: noteValueEditTextController,
                  hintText: "msg_asto_otv_r_no_kv_li".tr,
                  textInputAction: TextInputAction.done,
                  maxLines: 12,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v));
            }));
  }

  /// Section Widget
  Widget _buildSendRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildCancelStack(context,
              cancelButtonText: "lbl_odeslat".tr,
              closeButtonText: "lbl".tr, onTapCancelStack: () {
            onTapCancelStack(context);
          }),
          _buildCancelStack(context,
              cancelButtonText: "lbl_zru_it".tr,
              closeButtonText: "lbl_x2".tr, onTapCancelStack: () {
            onTapCancelStack1(context);
          })
        ]));
  }

  /// Common widget
  Widget _buildCancelStack(
    BuildContext context, {
    required String cancelButtonText,
    required String closeButtonText,
    Function? onTapCancelStack,
  }) {
    return GestureDetector(
        onTap: () {
          onTapCancelStack!.call();
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
                decoration: AppDecoration.outlineErrorContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.h, vertical: 19.v),
                          decoration: AppDecoration.outlineLightBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Text(cancelButtonText,
                              style: theme.textTheme.bodySmall!
                                  .copyWith(color: appTheme.lightBlue900)))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text(closeButtonText,
                              style: theme.textTheme.displayMedium!.copyWith(
                                  color: theme.colorScheme.errorContainer
                                      .withOpacity(1)))))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapCancelStack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }

  /// Navigates to the hlavniScreen when the action is triggered.
  onTapCancelStack1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hlavniScreen,
    );
  }
}
