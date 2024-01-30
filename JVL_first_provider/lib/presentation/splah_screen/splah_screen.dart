import 'models/splah_model.dart';
import 'package:flutter/material.dart';
import 'package:jlv_first/core/app_export.dart';
import 'provider/splah_provider.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  SplahScreenState createState() => SplahScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplahProvider(), child: SplahScreen());
  }
}

class SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 36.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      Text("msg_uvodni_stranka_pred".tr,
                          style: CustomTextStyles.bodySmallBlack900)
                    ]))));
  }
}
