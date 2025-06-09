import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../disclaimer_agreement_page/disclaimer_agreement_page.dart';
import '../referral_share_rules_page/referral_share_rules_page.dart';
import 'bloc/top_up_promo_popup_bloc.dart';
import 'models/top_up_promo_popup_model.dart';
import 'top_up_promo_popup_initial_page.dart';

// ignore_for_file: must_be_immutable
class TopUpPromoPopupScreen extends StatelessWidget {
  TopUpPromoPopupScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TopUpPromoPopupBloc>(
      create:
          (context) => TopUpPromoPopupBloc(
            TopUpPromoPopupState(
              topUpPromoPopupModelObj: TopUpPromoPopupModel(),
            ),
          )..add(TopUpPromoPopupInitialEvent()),
      child: TopUpPromoPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.topUpPromoPopupInitialPage,
          onGenerateRoute:
              (routeSetting) => PageRouteBuilder(
                pageBuilder:
                    (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                transitionDuration: Duration(seconds: 0),
              ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomappbarnav(context),
      ),
      floatingActionButton: CustomFloatingButton(
        height: 56,
        width: 56,
        backgroundColor: appTheme.blueGray90021,
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup403,
          height: 28.0.h,
          width: 28.0.h,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  /// Section Widget
  Widget _buildBottomappbarnav(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }

  ///Handling page based on route
  Widget getCurrentPage(BuildContext context, String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.topUpPromoPopupInitialPage:
        return TopUpPromoPopupInitialPage.builder(context);
      case AppRoutes.disclaimerAgreementPage:
        return DisclaimerAgreementPage.builder(context);
      case AppRoutes.referralShareRulesPage:
        return ReferralShareRulesPage.builder(context);
      default:
        return TopUpPromoPopupInitialPage.builder(context);
    }
  }
}
