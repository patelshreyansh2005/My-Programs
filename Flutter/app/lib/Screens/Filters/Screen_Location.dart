import 'package:app/Utils/Colors_.dart';
import 'package:app/Widgets/Widget_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:multiselect_nested/multiselect_nested.dart';

class Screen_Location extends StatefulWidget {
  const Screen_Location({super.key});

  @override
  State<Screen_Location> createState() => _Screen_LocationState();
}

bool isselect = false;
List<bool> Location_Controller = List.filled(10, false);
List<String> Location_Text = List.filled(10, 'Surat,Gujrat');

class _Screen_LocationState extends State<Screen_Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ,
    );
  }
}

//
// body: Container(
// color: Colors_.Filter_Detail,
// padding: EdgeInsets.all(10.h),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Widget_Text.text(
// message: 'Select your location:',
// fontSize: 24.w,
// color: Color(0XFF007EA7),
// ),
// SizedBox(
// height: 30.h,
// ),
// MultiSelectDropDown.network(
// onOptionSelected: (options) {},
// networkConfig: NetworkConfig(
// url: 'https://jsonplaceholder.typicode.com/users',
// method: RequestMethod.get,
// headers: {
// 'Content-Type': 'application/json',
// },
// ),
// chipConfig: const ChipConfig(wrapType: WrapType.wrap),
// responseParser: (response) {
//
// final list = (response as List<dynamic>).map((e) {
// final item = e as Map<String, dynamic>;
// return ValueItem(
// label: item['name'],
// value: item['id'].toString(),
// );
// }).toList();
//
// return Future.value(list);
// },
// responseErrorBuilder: ((context, body) {
// return const Padding(
// padding: EdgeInsets.all(16.0),
// child: Text('Error fetching the data'),
// );
// }),
// )
// //
// // // Expanded(
// // //   child: ListView.builder(itemBuilder: (context, index) {
// // //     return  Wrap(
// // //       children:[OutlinedButton(
// // //         style: OutlinedButton.styleFrom(
// // //             shape: RoundedRectangleBorder(
// // //               borderRadius: BorderRadius.all(
// // //                 Radius.circular(10),
// // //               ),
// // //             ),
// // //             side: BorderSide(
// // //               color:
// // //               isselect ? Color(0XFF007EA7) : Colors.black38,
// // //               width: isselect ? 1 : 1,
// // //             )),
// // //         onPressed: () {
// // //           setState(() {
// // //             isselect = !isselect;
// // //           });
// // //         },
// // //         child: Widget_Text.text(message: 'Surat,Gujrat',color: isselect?Color(0XFF007EA7)  :Colors.black54),
// // //       ),
// // //     ],
// // //     );
// // //   },itemCount: 10,),
// // // ),
// // ],
// // )),
