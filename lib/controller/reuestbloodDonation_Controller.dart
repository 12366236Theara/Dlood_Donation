import 'package:get/get.dart';
import 'package:kilo_health/services/service_requetbloodDonation.dart';

class ReuestblooddonationController extends GetxController {
  final ServiceRequetblooddonation service = ServiceRequetblooddonation();
  var isLoading = false.obs;

  Future<void> servicecontroller({
    required String address,
    required String requesttype,
    required String bloodtype,
    required String phonenumber,
    required String note,
  }) async {
    isLoading.value = true;

    try {
      final response = await service.postBlood(
          bloodtype, address, phonenumber, requesttype, note);
      // ignore: unnecessary_null_comparison
      if (response != null) {
        Get.back();
        // Handle successful response
        print('Response: $response');
      } else {
        // Handle null response
        // Get.snackbar('Error', 'invalid blood type');
        print('Response is null');
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      // Show snackbar for any errors
      Get.snackbar('Error', 'Failed to make request', snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }
  }
}
