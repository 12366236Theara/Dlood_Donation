import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/controller/request-blood_controller.dart';
import 'package:kilo_health/controller/reuestbloodDonation_Controller.dart';

class ScreeenCreatearequest extends StatelessWidget {
  const ScreeenCreatearequest({super.key});

  @override
  Widget build(BuildContext context) {
    Rx<Widget> controllerWidget = Rx<Widget>(Container());
    final RequestbloodController controller = Get.put(RequestbloodController());
    final TextEditingController requestcontroller = TextEditingController();
    final TextEditingController bloodTypecontroller = TextEditingController();
    final TextEditingController locationcontroller =
        TextEditingController(text: 'Phnom Penh');
    final TextEditingController phonecontroller =
        TextEditingController(text: '+85512366246');
    final TextEditingController notecontroller = TextEditingController();
    final ReuestblooddonationController controllerblood =
        Get.put(ReuestblooddonationController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:  Text('create_request'.tr),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              
              decoration: InputDecoration(
                labelText: 'request_type'.tr,
              ),
              items: [
                'request',
                'donation',
              ].map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (value) {
                requestcontroller.text = value!;
                if (value == 'donation') {
                  controllerWidget.value = const Text("Donation Request Form");
                } else if (value == 'request') {
                  controllerWidget.value = const Text("Blood Request Form");
                }
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'blood_type'.tr),
              items: ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-']
                  .map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (value) {
                bloodTypecontroller.text = value!;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: locationcontroller,
              decoration: InputDecoration(labelText: 'address'.tr),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: phonecontroller,
              decoration: InputDecoration(labelText: 'phone_number'.tr),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: notecontroller,
              decoration: InputDecoration(labelText: 'note'.tr),
            ),
            const SizedBox(height: 20),
           
            ConpomentButtom(title: 'submit_request'.tr , onTa: (){
               if (requestcontroller.text == 'request') {
                  controller.requestController(
                    address: locationcontroller.text ,
                    bloodType: bloodTypecontroller.text ,
                    note:  notecontroller.text,
                    phoneNumber: phonecontroller.text ,
                    requestType:  requestcontroller.text,
                  
                  );
                } else if (requestcontroller.text == 'donation') {
                  controllerblood.servicecontroller(
                    address: locationcontroller.text,
                    bloodtype: bloodTypecontroller.text,
                    note: notecontroller.text,
                    phonenumber: phonecontroller.text,
                    requesttype: requestcontroller.text,
                  );
                  
                }
            },)
          ],
        ),
      ),
    );
  }
}
