import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kilo_health/model/model_history.dart';
import 'package:kilo_health/services/service_history.dart';

class HistoryController extends GetxController {
  var isLooding = false.obs;
  var posts = <ModelHistory>[].obs;


  @override

  void onInit() {
    getHistory();
    // TODO: implement onInit
    super.onInit();
  }
   final ServiceHistory _service = ServiceHistory();
  Future<void> getHistory() async {
    try {
      isLooding(true);
      var history = await _service.getServiceHistory();
      print("History : ==========================$history");
      posts.assignAll(history); 
    } catch (e){
      print('Error E ${e.toString()}');
    } finally {
      isLooding.value = false;
    }
   

  }
}