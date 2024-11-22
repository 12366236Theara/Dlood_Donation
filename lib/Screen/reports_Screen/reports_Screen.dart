import 'package:flutter/material.dart';

import 'package:kilo_health/Screen/reports_Screen/conpoment/GriteItem_DR.dart';
import 'package:kilo_health/Screen/reports_Screen/conpoment/GriteItems.dart';

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
        title: const Text(
          "Reports",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20, top: 10,),
        child: Column(
          children: [
            Container(
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
                    labelStyle: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    tabs: const [
                      Tab(
                        text: "Requests Donation",
                      ),
                      Tab(
                        text: "Donation Requests",
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                GriteitemsRD(),
                GriteitemDr(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
