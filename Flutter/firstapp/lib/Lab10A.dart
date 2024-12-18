import 'package:flutter/material.dart';

class Lab10A extends StatefulWidget {
  const Lab10A({super.key});

  @override
  State<Lab10A> createState() => _Lab10AState();
}

class _Lab10AState extends State<Lab10A> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home_rounded,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.messenger,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text("Home"),
          ),
          Center(
            child: Text("Message"),
          ),
          Center(
            child: Text("Settings"),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "firstapp",
                style: TextStyle(
                  color: Colors.purple.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home_rounded),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.messenger),
              title: Text("Message"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
          ],
        ),
      ),
    );
  }
}
