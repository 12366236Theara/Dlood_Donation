import 'package:get/get.dart';
import 'package:kilo_health/services/service_rejected.dart';

class RejectedConteoller extends GetxController {
  var isLooding = false.obs;
  final ServiceRejected service = ServiceRejected();
  Future<void> postcontroller(String rejected) async {
    try {
      isLooding(true);
      final controlSrevice = await service.serviceRejected(rejected);
    } catch (e) {
      print("Error       E ");
    }
  }
}
