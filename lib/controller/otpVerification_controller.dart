import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kilo_health/services/service_OTPverification.dart';

class OtpverificationController  extends GetxController{ 
  var isLooding = false.obs;
  
  Future<void> PostController ({
    required String phone , 
    required String password,
    required String confirmpassword,
    required String otp,

  }) async {
    isLooding(true);
    final ServiceOtpverification service  =ServiceOtpverification();
    
    try {
      final result = await service.ServiceOtp(phone, password, confirmpassword, otp);

    } catch(e) {
      print('Failed to post ${e.toString()}');
    }
  }
}