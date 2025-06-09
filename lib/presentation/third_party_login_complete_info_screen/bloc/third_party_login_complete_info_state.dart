part of 'third_party_login_complete_info_bloc.dart';

/// Represents the state of ThirdPartyLoginCompleteInfo in the application.

// ignore_for_file: must_be_immutable
class ThirdPartyLoginCompleteInfoState extends Equatable {
  ThirdPartyLoginCompleteInfoState({
    this.phoneNumberController,
    this.mobileNumberController,
    this.selectedDropDownValue,
    this.selectedCountry,
    this.thirdPartyLoginCompleteInfoModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? mobileNumberController;

  SelectionPopupModel? selectedDropDownValue;

  ThirdPartyLoginCompleteInfoModel? thirdPartyLoginCompleteInfoModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
    phoneNumberController,
    mobileNumberController,
    selectedDropDownValue,
    selectedCountry,
    thirdPartyLoginCompleteInfoModelObj,
  ];
  ThirdPartyLoginCompleteInfoState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? mobileNumberController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    ThirdPartyLoginCompleteInfoModel? thirdPartyLoginCompleteInfoModelObj,
  }) {
    return ThirdPartyLoginCompleteInfoState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      thirdPartyLoginCompleteInfoModelObj:
          thirdPartyLoginCompleteInfoModelObj ??
          this.thirdPartyLoginCompleteInfoModelObj,
    );
  }
}
