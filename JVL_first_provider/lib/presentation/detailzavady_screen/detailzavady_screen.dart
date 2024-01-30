import '../detailzavady_screen/widgets/detailzavady_item_widget.dart';
import 'models/detailzavady_item_model.dart';
import 'models/detailzavady_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_leading_image.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'package:jlv_first/widgets/custom_text_form_field.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'provider/detailzavady_provider.dart';

class DetailzavadyScreen extends StatefulWidget {
  const DetailzavadyScreen({Key? key}) : super(key: key);

  @override
  DetailzavadyScreenState createState() => DetailzavadyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DetailzavadyProvider(),
        child: DetailzavadyScreen());
  }
}

class DetailzavadyScreenState extends State<DetailzavadyScreen> {
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
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 8.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 5.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildDetailZVady(context),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text("lbl_vybaven_vozu".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        SizedBox(height: 23.v),
                                        _buildOstatn(context),
                                        SizedBox(height: 53.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: Text(
                                                "msg_dopl_uj_c_informace".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.h),
                                            child: Selector<
                                                    DetailzavadyProvider,
                                                    TextEditingController?>(
                                                selector: (context, provider) =>
                                                    provider
                                                        .thirtySixController,
                                                builder: (context,
                                                    thirtySixController,
                                                    child) {
                                                  return CustomTextFormField(
                                                      controller:
                                                          thirtySixController,
                                                      hintText:
                                                          "msg_ohnut_noha_od_klienta"
                                                              .tr,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      alignment:
                                                          Alignment.center,
                                                      maxLines: 10,
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 14.h,
                                                              vertical: 17.v));
                                                })),
                                        SizedBox(height: 21.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.h),
                                            child: Text("lbl_foto_z_vady".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        SizedBox(height: 7.v),
                                        Container(
                                            height: 115.v,
                                            width: 121.h,
                                            margin: EdgeInsets.only(left: 14.h),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage8,
                                                      height: 115.v,
                                                      width: 121.h,
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 4.h),
                                                          child: Text(
                                                              "lbl_x".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall)))
                                                ]))
                                      ]))))
                    ])),
            bottomNavigationBar: _buildOdeslat(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 54.v,
        leadingWidth: 30.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Row(children: [
              AppbarSubtitleOne(text: "lbl_left_title".tr),
              AppbarSubtitle(
                  text: "lbl_title".tr, margin: EdgeInsets.only(left: 70.h))
            ])),
        actions: [
          AppbarTitle(
              text: "lbl_right_title".tr,
              margin: EdgeInsets.fromLTRB(15.h, 23.v, 15.h, 9.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildDetailHlEn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 19.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 9.h, right: 57.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: Text("lbl_z_vada_na_voze".tr,
                                    style: theme.textTheme.labelLarge)),
                            Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text("lbl_stav_z_vady".tr,
                                    style: theme.textTheme.labelLarge))
                          ])),
                  SizedBox(height: 1.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Selector<DetailzavadyProvider,
                                    TextEditingController?>(
                                selector: (context, provider) =>
                                    provider.rJDDThirtyFourController,
                                builder:
                                    (context, rJDDThirtyFourController, child) {
                                  return CustomTextFormField(
                                      width: 167.h,
                                      controller: rJDDThirtyFourController,
                                      hintText: "msg_rj_888000dd_34".tr);
                                }),
                            Selector<DetailzavadyProvider,
                                    TextEditingController?>(
                                selector: (context, provider) =>
                                    provider.novController,
                                builder: (context, novController, child) {
                                  return CustomTextFormField(
                                      width: 157.h,
                                      controller: novController,
                                      hintText: "lbl_nov".tr);
                                })
                          ])),
                  SizedBox(height: 12.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("lbl_datum_hl_en".tr,
                                          style: theme.textTheme.labelLarge)),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 9.h, vertical: 5.v),
                                      decoration: AppDecoration.outlinePrimary
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text("lbl_20_12_2023".tr,
                                                style:
                                                    theme.textTheme.bodySmall)
                                          ])),
                                  SizedBox(height: 16.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("lbl_datum_zm_ny".tr,
                                          style: theme.textTheme.labelLarge)),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 9.h, vertical: 5.v),
                                      decoration: AppDecoration.outlinePrimary
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text("lbl_20_12_2023".tr,
                                                style:
                                                    theme.textTheme.bodySmall)
                                          ]))
                                ])),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl_zadavatel".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 2.v),
                              Selector<DetailzavadyProvider,
                                      TextEditingController?>(
                                  selector: (context, provider) =>
                                      provider.frantiekNovkController,
                                  builder:
                                      (context, frantiekNovkController, child) {
                                    return CustomTextFormField(
                                        width: 158.h,
                                        controller: frantiekNovkController,
                                        hintText: "lbl_franti_ek_nov_k".tr);
                                  }),
                              SizedBox(height: 11.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl_e_itel".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 3.v),
                              Selector<DetailzavadyProvider,
                                      TextEditingController?>(
                                  selector: (context, provider) =>
                                      provider.nepiazenController,
                                  builder:
                                      (context, nepiazenController, child) {
                                    return CustomTextFormField(
                                        width: 158.h,
                                        controller: nepiazenController,
                                        hintText: "lbl_nep_i_azen".tr);
                                  })
                            ])
                      ])
                ])));
  }

  /// Section Widget
  Widget _buildDetailZVady(BuildContext context) {
    return Container(
        height: 225.v,
        width: 366.h,
        margin: EdgeInsets.only(left: 10.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 9.v),
                  child: Text("lbl_detail_z_vady".tr,
                      style: theme.textTheme.headlineSmall))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 225.v,
                  width: 366.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            margin: EdgeInsets.only(left: 221.h, bottom: 168.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 11.h, vertical: 5.v),
                            decoration: AppDecoration.outlinePrimary1.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage6,
                                      height: 41.v,
                                      width: 40.h,
                                      margin: EdgeInsets.only(bottom: 4.v)),
                                  Container(
                                      width: 51.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, top: 6.v, bottom: 7.v),
                                      child: Text("lbl_vyfo_z_vadu".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall))
                                ]))),
                    _buildDetailHlEn(context)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildOstatn(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 172.v,
            width: 357.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 127.h, right: 127.h, bottom: 1.v),
                      padding: EdgeInsets.all(17.h),
                      decoration: AppDecoration.outlinePrimary1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7.v),
                            SizedBox(
                                width: 54.h,
                                child: Text("lbl_chladni_ka".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall))
                          ]))),
              Selector<DetailzavadyProvider, TextEditingController?>(
                  selector: (context, provider) => provider.ostatnController,
                  builder: (context, ostatnController, child) {
                    return CustomTextFormField(
                        width: 103.h,
                        controller: ostatnController,
                        hintText: "lbl_ostatn".tr,
                        alignment: Alignment.bottomRight,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 30.v));
                  }),
              Consumer<DetailzavadyProvider>(
                  builder: (context, provider, child) {
                return StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 4,
                    crossAxisSpacing: 24.84.h,
                    mainAxisSpacing: 24.84.h,
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.fit(2);
                    },
                    itemCount: provider
                        .detailzavadyModelObj.detailzavadyItemList.length,
                    itemBuilder: (context, index) {
                      DetailzavadyItemModel model = provider
                          .detailzavadyModelObj.detailzavadyItemList[index];
                      return DetailzavadyItemWidget(model);
                    });
              })
            ])));
  }

  /// Section Widget
  Widget _buildOdeslat(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 50.h, right: 9.h, bottom: 20.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          GestureDetector(
              onTap: () {
                onTapThirtyTwo(context);
              },
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Container(
                      height: 60.v,
                      width: 106.h,
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                margin: EdgeInsets.only(left: 50.h),
                                decoration: AppDecoration.outlinePrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Text("lbl_odeslat".tr,
                                    style: theme.textTheme.bodySmall))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl".tr,
                                style: theme.textTheme.displayMedium))
                      ])))),
          GestureDetector(
              onTap: () {
                onTapFortyTwo(context);
              },
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(left: 48.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Container(
                      height: 60.v,
                      width: 176.h,
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50.h, vertical: 19.v),
                                decoration: AppDecoration.outlinePrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Text("lbl_zru_it".tr,
                                    style: theme.textTheme.bodySmall))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 32.h),
                                child: Text("lbl_x2".tr,
                                    style: theme.textTheme.displayMedium)))
                      ]))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the zavadyScreen when the action is triggered.
  onTapThirtyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.zavadyScreen,
    );
  }

  /// Navigates to the zavadyScreen when the action is triggered.
  onTapFortyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.zavadyScreen,
    );
  }
}
