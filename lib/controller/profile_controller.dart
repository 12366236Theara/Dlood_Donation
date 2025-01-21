import 'package:get/get.dart';
import 'package:kilo_health/model_fake/model_ProfileResponse.dart';

import 'package:kilo_health/model/model_profile.dart';
import 'package:kilo_health/repositories/userRepositories.dart';

import 'package:kilo_health/services/service.dart';

class ProfileController extends GetxController {
  // final ProfileService _profileService;
  final UserRepositories _reposerys;
  // ProfileService prof = ProfileService();
  ProfileController(
    this._reposerys,
  );
  @override
  void onInit() {
    getprofile();
    // TODO: implement onInit
    super.onInit();
  }

  final modelProfile = Model_Profile().obs;
  var islooding = false.obs;
  Future<void> getprofile() async {
    try {
      islooding.value = true;
      // ModelprofileResponse body = ModelprofileResponse(availableForDonation: false , avatar: "kuevgueg " , firstName:  "JHHHUUE" , lastName: "rvthrhghr" , id:  10, phone: "38663883");
      // var response = await _profileService.getProfile();
      final response = await _reposerys.profile();
      if (response.firstName != "") {
        islooding.value = false;
        modelProfile.value = response;
      }
    } catch (e) {
      islooding.value = true;
      print("Error: ==============${e.toString()}");
    } finally {
      islooding.value = false;
    }
  }
}
