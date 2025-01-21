import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/GriteItem_DonationRequests.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/gritItem.dart';
import 'package:kilo_health/Screen/reports_Screen/conpoment/donationBlood.dart';
import 'package:kilo_health/Screen/reports_Screen/conpoment/reuestDonation.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "report".tr,
          style: GoogleFonts.notoSansKhmer(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TabBar(
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.grey,
                    dividerColor: Colors.amber,
                    dividerHeight: 0,
                    labelStyle: GoogleFonts.notoSansKhmer(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    tabs: [
                      Tab(
                        text: "request_donations".tr,
                      ),
                      Tab(
                        text: "donation_requests".tr,
                      )
                    ]),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: const [
              Donationblood(),
              Reuestdonation(),
            ]),
          )
        ],
      ),
    );
  }
}
