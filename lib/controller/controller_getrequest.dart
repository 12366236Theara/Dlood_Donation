import 'package:get/get.dart';
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/model/model_getrequest.dart';
import 'package:kilo_health/repositories/userRepositories.dart';
import 'package:kilo_health/services/service_Getrequest.dart';

class ControllerGetrequest extends GetxController {
  late final UserRepositories _reposery;

  final GetRequestService getRequestService = GetRequestService();

  final model_GetRequest = <Model_GetRequest>[].obs;
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    _reposery = Get.find<UserRepositories>();
    getcontroller();
  }

  Future<void> getcontroller() async {
    isLoading.value = true;
    try {
      final service = await _reposery.getrequest();
      print("=================se $service");
      isLoading.value = false;
      model_GetRequest.value = service;
      // final requests = await getRequestService.fetchRequests(token!);
      // model_GetRequest.value = service;
    } catch (e) {
      print("Error===================$e.");
      rethrow;
    } finally {
      isLoading.value = false;
    }
  }
}
