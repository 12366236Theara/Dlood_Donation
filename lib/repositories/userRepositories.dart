import 'package:kilo_health/model/model_Login.dart';
import 'package:kilo_health/model/model_SignUp.dart';
import 'package:kilo_health/model/model_donationBlood.dart';
import 'package:kilo_health/model/model_getrequest.dart';
import 'package:kilo_health/model/model_profile.dart';
import 'package:kilo_health/model_fake/model_SigupResponse.dart';
import 'package:kilo_health/model_fake/model_loginRepos.dart';

abstract class UserRepositories {
  Future<ModelLogin> login(ModelLoginrepos data);
  Future<Model_Profile> profile();
  Future<List<Model_GetRequest>> getrequest();
  Future<ModelDonationblood> getdonation();
  Future<Model_SingUp> signUp(ModelSigupresponse data);
  
} 
