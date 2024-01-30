import '../seznamzprav_screen/widgets/messageform_item_widget.dart';
import '../seznamzprav_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/messageform_item_model.dart';
import 'models/seznamzprav_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_leading_image.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'provider/seznamzprav_provider.dart';

class SeznamzpravScreen extends StatefulWidget {
  const SeznamzpravScreen({Key? key}) : super(key: key);

  @override
  SeznamzpravScreenState createState() => SeznamzpravScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SeznamzpravProvider(), child: SeznamzpravScreen());
  }
}

class SeznamzpravScreenState extends State<SeznamzpravScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                child: Column(children: [
                  _buildZprVy(context),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildMessageForm(context),
                            SizedBox(height: 31.v),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text("lbl_archiv_zpr_v".tr,
                                    style: theme.textTheme.labelLarge)),
                            SizedBox(height: 10.v),
                            _buildViewHierarchy(context)
                          ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 17.h, top: 38.v, bottom: 7.v),
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
              margin: EdgeInsets.fromLTRB(14.h, 43.v, 14.h, 9.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildZprVy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 2.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 13.v, bottom: 17.v),
                  child: Text("lbl_zpr_vy".tr,
                      style: theme.textTheme.headlineSmall)),
              GestureDetector(
                  onTap: () {
                    onTapSeventeen(context);
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
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.h, vertical: 18.v),
                                    decoration: AppDecoration.outlinePrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 2.v),
                                          Text("lbl_napsat_zpr_vu".tr,
                                              style: theme.textTheme.bodySmall)
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("lbl".tr,
                                        style: theme.textTheme.displayMedium)))
                          ]))))
            ]));
  }

  /// Section Widget
  Widget _buildMessageForm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Consumer<SeznamzpravProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 23.v);
              },
              itemCount:
                  provider.seznamzpravModelObj.messageformItemList.length,
              itemBuilder: (context, index) {
                MessageformItemModel model =
                    provider.seznamzpravModelObj.messageformItemList[index];
                return MessageformItemWidget(model, onTapMessageForm: () {
                  onTapMessageForm(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Consumer<SeznamzpravProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 23.v);
          },
          itemCount: provider.seznamzpravModelObj.viewhierarchyItemList.length,
          itemBuilder: (context, index) {
            ViewhierarchyItemModel model =
                provider.seznamzpravModelObj.viewhierarchyItemList[index];
            return ViewhierarchyItemWidget(model, onTapViewHierarchy: () {
              onTapViewHierarchy(context);
            });
          });
    });
  }

  /// Navigates to the detailzpravyScreen when the action is triggered.
  onTapViewHierarchy(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailzpravyScreen);
  }

  /// Navigates to the detailzpravyScreen when the action is triggered.
  onTapMessageForm(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailzpravyScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the detailzpravyScreen when the action is triggered.
  onTapSeventeen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailzpravyScreen,
    );
  }
}
