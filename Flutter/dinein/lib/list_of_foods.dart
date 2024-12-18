import 'package:flutter/material.dart';

class ListOfFoods extends StatefulWidget {
  int index = 0;

  ListOfFoods({super.key, this.restaurantData, int index = 0}) {
    this.index = index;
  } // Add constructor for data

  final List? restaurantData;

  @override
  State<ListOfFoods> createState() => _ListOfFoodsState();
}

class _ListOfFoodsState extends State<ListOfFoods> {
  late List<Map<String, dynamic>>? itemsList;
  int index = 0;

  @override
  void initState() {
    super.initState();

    itemsList = widget.restaurantData as List<Map<String, dynamic>>?;
    this.index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade400.withOpacity(0.75),
          automaticallyImplyLeading: false,
          actions: [
            Expanded(
              child: Center(
                child: Text(
                  widget.restaurantData?[index!]['name'] ?? 'Unknown',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
        body: Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return listOfFoods(index);
            },
            itemCount: itemsList?.length ?? 0,
          ),
        ),
      ),
    );
  }

  Widget listOfFoods(int index) {
    final item = itemsList?[index];

    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          // ... (shadow and border radius)
        ],
      ),
      child: Container(
        // Use Container for simpler layout
        key: ValueKey(index),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[200], // Add a background color
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                item?['items'][index]['image'],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      item?['items'][index]['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "weight ${item!['items'][index]['weight'].toString()} gram",
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "\$${item!['items'][index]['price'].toString()}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.greenAccent,
                    alignment: Alignment.bottomRight,
                    width: 99,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            hoverColor: Colors.green,
                            onTap: () {
                              if (item['items'][index]['count'] > 0) {
                                item['items'][index]['count']--;
                              }
                            },
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            item['items'][index]['count'].toString(),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            hoverColor: Colors.green,
                            onTap: () {
                              item['items'][index]['count']++;
                            },
                            child: const Text(
                              "+",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
