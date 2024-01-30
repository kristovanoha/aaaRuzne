import '../kartavozu_screen/widgets/vepnzazenchipview_item_widget.dart';
import 'models/kartavozu_model.dart';
import 'models/vepnzazenchipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_leading_image.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'package:jlv_first/widgets/custom_text_form_field.dart';
import 'provider/kartavozu_provider.dart';

class KartavozuScreen extends StatefulWidget {
  const KartavozuScreen({Key? key}) : super(key: key);

  @override
  KartavozuScreenState createState() => KartavozuScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => KartavozuProvider(), child: KartavozuScreen());
  }
}

class KartavozuScreenState extends State<KartavozuScreen> {
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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildRjddValueRow(context),
                              SizedBox(height: 14.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("lbl_datum_sanitace".tr,
                                      style: theme.textTheme.labelLarge)),
                              _buildValueRow(context),
                              SizedBox(height: 15.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("msg_dopl_uj_c_informace".tr,
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.h),
                                  child: Selector<KartavozuProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.descriptionController,
                                      builder: (context, descriptionController,
                                          child) {
                                        return CustomTextFormField(
                                            controller: descriptionController,
                                            hintText: "msg_dal_informace".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            maxLines: 4);
                                      })),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("lbl_z_vady2".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 4.v),
                              _buildTwentyFourColumn(context),
                              SizedBox(height: 20.v),
                              _buildTwentyTwoColumn(context),
                              SizedBox(height: 19.v),
                              _buildTwentyFourColumn1(context),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("lbl_vybaven_vozu".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 23.v),
                              _buildVepnzazenChipView(context)
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
  Widget _buildRjddValueColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 13.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_karta_vozu".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 11.v),
          Text("msg_informace_o_vozu".tr, style: theme.textTheme.labelLarge),
          SizedBox(height: 6.v),
          Selector<KartavozuProvider, TextEditingController?>(
              selector: (context, provider) => provider.rJDDvalueController,
              builder: (context, rJDDvalueController, child) {
                return CustomTextFormField(
                    width: 167.h,
                    controller: rJDDvalueController,
                    hintText: "msg_rj_888000dd_34".tr);
              })
        ]));
  }

  /// Section Widget
  Widget _buildRjddValueRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildRjddValueColumn(context),
          Column(children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 7.v),
                decoration: AppDecoration.outlinePrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage6,
                      height: 41.v,
                      width: 40.h),
                  Container(
                      width: 51.h,
                      margin: EdgeInsets.fromLTRB(23.h, 4.v, 24.h, 4.v),
                      child: Text("lbl_skenuj_qr_k_d".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall))
                ])),
            SizedBox(height: 19.v),
            Container(
                width: 167.h,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
                decoration: AppDecoration.outlinePrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Text("lbl_j_deln_v_z".tr,
                    style: CustomTextStyles.labelLargePrimary))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildValueRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Selector<KartavozuProvider, TextEditingController?>(
              selector: (context, provider) => provider.valueController,
              builder: (context, valueController, child) {
                return CustomTextFormField(
                    width: 158.h,
                    controller: valueController,
                    hintText: "lbl_20_12_2023".tr);
              }),
          Selector<KartavozuProvider, TextEditingController?>(
              selector: (context, provider) => provider.funknController,
              builder: (context, funknController, child) {
                return CustomTextFormField(
                    width: 167.h,
                    controller: funknController,
                    hintText: "lbl_funkc_n".tr);
              })
        ]));
  }

  /// Section Widget
  Widget _buildTwentyFourColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 9.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(right: 59.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_datum_zad_n".tr,
                            style: CustomTextStyles.bodySmallBlack900),
                        Text("lbl_stav".tr,
                            style: CustomTextStyles.bodySmallBlack900)
                      ])),
              SizedBox(height: 3.v),
              Text("lbl_popis_z_vady".tr,
                  style: CustomTextStyles.bodySmallBlack900)
            ]));
  }

  /// Section Widget
  Widget _buildTwentyTwoColumn(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTwentyTwoColumn(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 3.v),
            decoration: AppDecoration.outlineAmber
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 34.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("lbl_24_1_2024".tr,
                                    style: theme.textTheme.bodySmall)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text("lbl_v_e_en".tr,
                                    style: CustomTextStyles.bodySmallAmber600))
                          ])),
                  SizedBox(height: 6.v),
                  Text("msg_rozbit_klika_u".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 9.v)
                ])));
  }

  /// Section Widget
  Widget _buildTwentyFourColumn1(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTwentyFourColumn(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 3.v),
            decoration: AppDecoration.outlineOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 15.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("lbl_1_1_2024".tr,
                                    style: theme.textTheme.bodySmall)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text("lbl_nahl_eno".tr,
                                    style: CustomTextStyles
                                        .bodySmallOnPrimaryContainer))
                          ])),
                  SizedBox(height: 6.v),
                  Text("msg_profukuj_c_t_sn_n".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 8.v)
                ])));
  }

  /// Section Widget
  Widget _buildVepnzazenChipView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h),
        child: Consumer<KartavozuProvider>(builder: (context, provider, child) {
          return Wrap(
              runSpacing: 24.84.v,
              spacing: 24.84.h,
              children: List<Widget>.generate(
                  provider.kartavozuModelObj.vepnzazenchipviewItemList.length,
                  (index) {
                VepnzazenchipviewItemModel model =
                    provider.kartavozuModelObj.vepnzazenchipviewItemList[index];
                return VepnzazenchipviewItemWidget(model,
                    onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                });
              }));
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the detailzavadyScreen when the action is triggered.
  onTapTwentyTwoColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailzavadyScreen,
    );
  }

  /// Navigates to the detailzavadyScreen when the action is triggered.
  onTapTwentyFourColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailzavadyScreen,
    );
  }
}
