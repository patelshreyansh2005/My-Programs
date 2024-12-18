import 'package:flutter/material.dart';
import 'list_of_foods.dart';

class CustomWidgets {
  static Widget myBoxshadow(Widget w) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: w,
    );
  }

  static Widget categories(int index, Map<String, dynamic> map) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Card(
          key: ValueKey(index),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadowColor: Colors.transparent,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          color: Colors.transparent,
          borderOnForeground: false,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  map['image'],
                  width: 100,
                  height: 100,
                  alignment: Alignment.topCenter,
                ),
              ),
              Text(
                map['name'],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget restaurantList(
      int index, List<Map<String, dynamic>> list, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return ListOfFoods(restaurantData: list, index: index);
          },
        ));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Card(
          key: ValueKey(index),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadowColor: Colors.transparent,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          color: Colors.transparent,
          borderOnForeground: false,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index]['name'],
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      list[index]['description'],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      list[index]['image'],
                      width: 150,
                      height: 150,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
