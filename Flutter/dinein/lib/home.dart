import 'package:flutter/material.dart';
import 'custom_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> categoryList = [
    {'name': 'food1', 'image': 'images/logo/logo.png'},
    {'name': 'food2', 'image': 'images/logo/logo.png'},
    {'name': 'food3', 'image': 'images/logo/logo.png'},
    {'name': 'food4', 'image': 'images/logo/logo.png'},
    {'name': 'food5', 'image': 'images/logo/logo.png'},
    {'name': 'food6', 'image': 'images/logo/logo.png'},
    {'name': 'food7', 'image': 'images/logo/logo.png'},
    {'name': 'food8', 'image': 'images/logo/logo.png'},
    {'name': 'food9', 'image': 'images/logo/logo.png'},
    {'name': 'food10', 'image': 'images/logo/logo.png'},
  ];

  List<Map<String, dynamic>> restaurantList = [
    {
      'name': 'restaurant1',
      'image': '/images/logo/logo.png',
      'description': 'Description1',
      'items': [
        {
          'name': 'pizza1',
          'price': 10,
          'weight': 100,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza2',
          'price': 20,
          'weight': 200,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza3',
          'price': 30,
          'weight': 300,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza4',
          'price': 40,
          'weight': 400,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza5',
          'price': 50,
          'weight': 500,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
      ]
    },
    {
      'name': 'restaurant2',
      'image': '/images/logo/logo.png',
      'description': 'Description2',
      'items': [
        {
          'name': 'pizza1',
          'price': 10,
          'weight': 100,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza2',
          'price': 20,
          'weight': 200,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza3',
          'price': 30,
          'weight': 300,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza4',
          'price': 40,
          'weight': 400,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza5',
          'price': 50,
          'weight': 500,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
      ]
    },
    {
      'name': 'restaurant3',
      'image': '/images/logo/logo.png',
      'description': 'Description3',
      'items': [
        {
          'name': 'pizza1',
          'price': 10,
          'weight': 100,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza2',
          'price': 20,
          'weight': 200,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza3',
          'price': 30,
          'weight': 300,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza4',
          'price': 40,
          'weight': 400,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza5',
          'price': 50,
          'weight': 500,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
      ]
    },
    {
      'name': 'restaurant4',
      'image': '/images/logo/logo.png',
      'description': 'Description4',
      'items': [
        {
          'name': 'pizza1',
          'price': 10,
          'weight': 100,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza2',
          'price': 20,
          'weight': 200,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza3',
          'price': 30,
          'weight': 300,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza4',
          'price': 40,
          'weight': 400,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza5',
          'price': 50,
          'weight': 500,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
      ]
    },
    {
      'name': 'restaurant5',
      'image': '/images/logo/logo.png',
      'description': 'Description5',
      'items': [
        {
          'name': 'pizza1',
          'price': 10,
          'weight': 100,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza2',
          'price': 20,
          'weight': 200,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza3',
          'price': 30,
          'weight': 300,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza4',
          'price': 40,
          'weight': 400,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
        {
          'name': 'pizza5',
          'price': 50,
          'weight': 500,
          'count': 0,
          'image': '/images/logo/logo.png',
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade400.withOpacity(0.75),
          automaticallyImplyLeading: false,
          actions: const [
            Expanded(
              flex: 1,
              child: Icon(
                Icons.density_medium_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 10,
              child: Center(
                child: Text(
                  'HOME',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                      ),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 10),
                      child: Expanded(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: const Icon(
                                Icons.search,
                                color: Colors.orange,
                                size: 30,
                              ),
                            ),
                            const Text(
                              'Search Restaurant',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange.shade100,
                    ),
                    child: const Image(
                      image: AssetImage('images/icon/filter.png'),
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10, top: 20, bottom: 10, right: 10),
              width: double.infinity,
              child: const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomWidgets.categories(index, categoryList[index]);
                },
                itemCount: categoryList.length,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10, top: 20, bottom: 10, right: 10),
              width: double.infinity,
              child: const Text(
                'Restaurant',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CustomWidgets.restaurantList(
                      index, restaurantList, context);
                },
                itemCount: restaurantList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
