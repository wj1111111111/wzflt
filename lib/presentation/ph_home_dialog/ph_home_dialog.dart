import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/ph_home_bloc.dart';
import 'models/listcheckmark_item_model.dart';
import 'models/ph_home_model.dart';
import 'widgets/listcheckmark_item_widget.dart'; // ignore_for_file: must_be_immutable

class PhHomeDialog extends StatelessWidget {
  const PhHomeDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PhHomeBloc>(
      create:
          (context) =>
              PhHomeBloc(PhHomeState(phHomeModelObj: PhHomeModel()))
                ..add(PhHomeInitialEvent()),
      child: PhHomeDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.h),
          decoration: AppDecoration.gradientBlueGrayToBluegray80011.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL201,
          ),
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 24.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_experience_bonus".tr,
                      style: CustomTextStyles.labelLargeMedium,
                    ),
                    TextSpan(
                      text: "lbl_12_004".tr,
                      style: CustomTextStyles.titleSmallAmberA400Black,
                    ),
                    TextSpan(
                      text: "msg_will_be_activated".tr,
                      style: CustomTextStyles.labelLargeMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: BlocSelector<PhHomeBloc, PhHomeState, PhHomeModel?>(
                    selector: (state) => state.phHomeModelObj,
                    builder: (context, phHomeModelObj) {
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 12.h);
                        },
                        itemCount:
                            phHomeModelObj?.listcheckmarkItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          ListcheckmarkItemModel model =
                              phHomeModelObj?.listcheckmarkItemList[index] ??
                              ListcheckmarkItemModel();
                          return ListcheckmarkItemWidget(
                            model,
                            onTapRadioGroup: (value) {
                              context.read<PhHomeBloc>().add(
                                ListcheckmarkItemEvent(
                                  index: index,
                                  radioGroup: value,
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
