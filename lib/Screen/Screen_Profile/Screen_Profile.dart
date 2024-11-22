import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_EditeProfile/EditeProfile.dart';
import 'package:kilo_health/Screen/Screen_Profile/conpoment/Carte.dart';
import 'package:kilo_health/Screen/Screen_Profile/conpoment/OnOff_Buttom.dart';
import 'package:kilo_health/Screen/Screen_Profile/conpoment/Property.dart';
import 'package:kilo_health/Screen/Screen_Setting/Screnn_Setting.dart';
import 'package:kilo_health/Screen/Screen_SignIn/Screen_SignIn.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: const [
          Icon(size: 27, color: Colors.white, Icons.notifications),
        ],
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Editeprofile(),
                          ));
                    },
                    child: const Text(
                      "Edit",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 60,
                foregroundImage: AssetImage("lib/image/imageProfile.jpg"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Van Chackriya",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/image/calls.jpg",
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "General Hospital, Phnom Penh",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Carte("0+", "Blood Type"),
                  const SizedBox(
                    width: 30,
                  ),
                  line(),
                  const SizedBox(
                    width: 30,
                  ),
                  Carte("05", "Donated"),
                  const SizedBox(
                    width: 30,
                  ),
                  line(),
                  const SizedBox(
                    width: 30,
                  ),
                  Carte("06", "Request"),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const OnOffButton(),
              const SizedBox(
                height: 30,
              ),
              Property("lib/image/Invite.jpg", "Invite a friend"),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Editeprofile(),
                      ));
                },
                child: Property("lib/image/edit.jpg", "Edit Profile"),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScrennSetting(),
                        ));
                  },
                  child: Property("lib/image/Mask group.jpg", "Setting")),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenSignin(),
                        ));
                  },
                  child: Property("lib/image/Signout.jpg", "Sign Out")),
            ],
          ),
        ),
      ),
    );
  }
}

Widget line() {
  return Container(
    height: 54,
    width: 1,
    color: Colors.grey,
  );
}
