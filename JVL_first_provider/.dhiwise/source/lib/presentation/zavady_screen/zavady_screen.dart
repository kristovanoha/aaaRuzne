import '../zavady_screen/widgets/twentysix_item_widget.dart';
import '../zavady_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/twentysix_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'models/zavady_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'package:jlv_first/widgets/app_bar/appbar_leading_image.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle.dart';
import 'package:jlv_first/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:jlv_first/widgets/app_bar/appbar_title.dart';
import 'package:jlv_first/widgets/app_bar/custom_app_bar.dart';
import 'provider/zavady_provider.dart';

class ZavadyScreen extends StatefulWidget {
  const ZavadyScreen({Key? key}) : super(key: key);

  @override
  ZavadyScreenState createState() => ZavadyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ZavadyProvider(), child: ZavadyScreen());
  }
}

class ZavadyScreenState extends State<ZavadyScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 15.v),
                child: Column(children: [
                  _buildZVadyRow(context),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildViewHierarchy(context),
                            SizedBox(height: 30.v),
                            Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Text("lbl_archiv_z_vad".tr,
                                    style: theme.textTheme.labelLarge)),
                            SizedBox(height: 10.v),
                            _buildTwentySix(context)
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
  Widget _buildZVadyRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 13.v, bottom: 16.v),
                  child: Text("lbl_z_vady".tr,
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
                                alignment: Alignment.center,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 42.h, vertical: 11.v),
                                    decoration: AppDecoration.outlinePrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: SizedBox(
                                        width: 51.h,
                                        child: Text("lbl_p_idat_z_vadu".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                theme.textTheme.bodySmall)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 32.h),
                                    child: Text("lbl".tr,
                                        style: theme.textTheme.displayMedium)))
                          ]))))
            ]));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Consumer<ZavadyProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 23.v);
          },
          itemCount: provider.zavadyModelObj.viewhierarchyItemList.length,
          itemBuilder: (context, index) {
            ViewhierarchyItemModel model =
                provider.zavadyModelObj.viewhierarchyItemList[index];
            return ViewhierarchyItemWidget(model, onTapViewHierarchy: () {
              onTapViewHierarchy(context);
            });
          });
    });
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Consumer<ZavadyProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 24.v);
          },
          itemCount: provider.zavadyModelObj.twentysixItemList.length,
          itemBuilder: (context, index) {
            TwentysixItemModel model =
                provider.zavadyModelObj.twentysixItemList[index];
            return TwentysixItemWidget(model, onTapTwentySix: () {
              onTapTwentySix(context);
            });
          });
    });
  }

  /// Navigates to the detailzavadyScreen when the action is triggered.
  onTapViewHierarchy(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailzavadyScreen);
  }

  /// Navigates to the detailzavadyScreen when the action is triggered.
  onTapTwentySix(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailzavadyScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the detailzavadyScreen when the action is triggered.
  onTapSeventeen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailzavadyScreen,
    );
  }
}
