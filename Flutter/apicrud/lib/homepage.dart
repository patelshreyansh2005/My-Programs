import 'package:apicrud/apis.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  Apis apis = Apis();
  List<Tab> tabs = [
    const Tab(text: 'pending task'),
    const Tab(text: 'completed task'),
  ];
  late TabController _controller;
  late Future<List<dynamic>> todos;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              "Todo",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            bottom: TabBar(
              controller: _controller,
              indicatorColor: Colors.blueAccent,
              labelColor: Colors.blueAccent,
              dividerColor: Colors.blueAccent,
              unselectedLabelColor: Colors.white54,
              overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.blueAccent.withOpacity(0.1),
              ),
              tabs: const [
                Tab(
                  text: "pending",
                ),
                Tab(
                  text: "completed",
                ),
              ],
            ),
          ),
          body: Container(
            color: Colors.black,
            child: TabBarView(
              controller: _controller,
              children: [
                FutureBuilder(
                  future: apis.getTodo(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data!.isNotEmpty) {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        snapshot.data![index]['title']
                                            .toString(),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                      Text(
                                        snapshot.data![index]['description']
                                            .toString(),
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          color: Colors.white54,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              width: 50,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.amberAccent,
                                              ),
                                              child: const Text(
                                                "edit",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              apis.deleteTodo(
                                                snapshot.data![index]['id']
                                                    .toString(),
                                              );
                                              setState(() {});
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              width: 50,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.red,
                                              ),
                                              child: const Text(
                                                "delete",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }
                    }
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blueAccent,
                      ),
                    );
                  },
                ),
                const Text(
                  "data222222",
                  style: TextStyle(color: Colors.white54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
