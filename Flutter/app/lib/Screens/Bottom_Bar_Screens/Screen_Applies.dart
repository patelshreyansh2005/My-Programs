import 'package:app/Screen_Active_Job.dart';
import 'package:app/Screen_Rejected_Job.dart';
import 'package:app/Screen_Selected_Job.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/material.dart';

class Screen_Applies extends StatefulWidget {
  const Screen_Applies({super.key});

  @override
  State<Screen_Applies> createState() => _Screen_AppliesState();
}

class _Screen_AppliesState extends State<Screen_Applies> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            const TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              tabs: [
                Tab(text: 'Applies'),
                Tab(text: 'Selected'),
                Tab(text: 'Rejected'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Screen_Active_Job(),
                  Screen_Selected_Job(),
                  Screen_Rejected_Job(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
