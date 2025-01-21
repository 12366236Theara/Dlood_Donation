import 'package:kilo_health/model/model_SignUp.dart';
import 'package:kilo_health/model_fake/model_ProfileResponse.dart';
import 'package:kilo_health/model/model_Login.dart';
import 'package:kilo_health/model/model_donationBlood.dart';
import 'package:kilo_health/model/model_getrequest.dart';
import 'package:kilo_health/model/model_profile.dart';
import 'package:kilo_health/model_fake/model_SigupResponse.dart';
import 'package:kilo_health/model_fake/model_loginRepos.dart';
import 'package:kilo_health/repositories/userRepositories.dart';
import 'package:kilo_health/services/service.dart';
import 'package:kilo_health/services/service_Getrequest.dart';
import 'package:kilo_health/services/service_SignUp.dart';
import 'package:kilo_health/services/service_getDonation.dart';
import 'package:kilo_health/services/service_login.dart';

class UserRepositoriesImpl implements UserRepositories {
  late final LoginService _loginService;
  late final ProfileService _profileService;
  late final SignUpService _signUpService;
  late final GetRequestService _getRequestService;
  late final DonationBloodService _donationBloodService;
  UserRepositoriesImpl(this._donationBloodService, this._loginService,
      this._signUpService, this._profileService, this._getRequestService);
  @override
  Future<ModelLogin> login(
    ModelLoginrepos data,
  ) async {
    final rsfe = await _loginService.loginPost(data.phone, data.password);
    if (rsfe != null) {
      return rsfe;
    }
    throw Exception("Could not login");
  }

  @override
  Future<Model_Profile> profile() async {
    final resulf = await _profileService.getProfile();
    return resulf;
  }

  @override
  Future<List<Model_GetRequest>> getrequest() async {
    final refs = await _getRequestService.fetchRequests();

    throw Exception("Unimplemented");
  }

  @override
  Future<ModelDonationblood> getdonation() async {
    try {
      final List<ModelDonationblood> refs =
          await _donationBloodService.fetchDonationBlood('access_token');
    } catch (e) {
      print(e);
    }
    throw Exception("getdonation Error");
  }

 

  @override
  Future<Model_SingUp> signUp(ModelSigupresponse data) async {
    final signup = await _signUpService.registerUser(
        phone: data.phone,
        firstName: data.firstname,
        lastName: data.lastname,
        password: data.password,
        confirmPassword: data.conficpaasword);
        return signup;
    
  }
}
