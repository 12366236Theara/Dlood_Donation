import 'package:get/get.dart';
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/model/model_donationBlood.dart';
import 'package:kilo_health/repositories/userRepositories.dart';
import 'package:kilo_health/services/service_getDonation.dart';

import 'package:kilo_health/token/token.dart';

class DonationBloodController extends GetxController {
  late final UserRepositories _reposery;
  final Token get_token = Get.put(Token());
  final DonationBloodService donationBloodService = DonationBloodService(
    
  ); // Initialize the service

  var isloading = false.obs;
  final donationBlood = <ModelDonationblood>[].obs;

  @override
  void onInit() {
    _reposery = Get.find<UserRepositories>();
    getcontroller();
    super.onInit();
  }

  Future<void> getcontroller() async {
    final token = await get_token.getToken("access_token");
    isloading(true);
    try {
      final resufs = await _reposery.getdonation();
      // final data = await donationBloodService
      //     .fetchDonationBlood(token!); // Use the service
      if (resufs.createdAt != null) {
        donationBlood.value = [resufs];
      }
    } catch (e) {
      print("Error fetching blood donation data: $e");
    } finally {
      isloading(false);
    }
  }
}
