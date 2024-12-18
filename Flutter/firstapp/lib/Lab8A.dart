import 'package:flutter/material.dart';

class Lab8A extends StatefulWidget {
  const Lab8A({super.key});

  @override
  State<Lab8A> createState() => _Lab8State();
}

class _Lab8State extends State<Lab8A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Center(
          //   child: Image(
          //     image: AssetImage(
          //       "images/images.jpg",
          //     ),
          //     fit: BoxFit.contain,
          //     height: MediaQuery.of(context).size.height / 3,
          //   ),
          // ),
          Center(
            child: Image(
              image: NetworkImage(
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/25ab2c4f-8c69-4ae6-b6cd-5fff6e126d0d/dfmrzz5-0edb58ce-a48f-4cf0-b14f-4812fccb7866.jpg/v1/fit/w_768,h_768,q_70,strp/panda_riding_bike_by_legalocb_dfmrzz5-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzY4IiwicGF0aCI6IlwvZlwvMjVhYjJjNGYtOGM2OS00YWU2LWI2Y2QtNWZmZjZlMTI2ZDBkXC9kZm1yeno1LTBlZGI1OGNlLWE0OGYtNGNmMC1iMTRmLTQ4MTJmY2NiNzg2Ni5qcGciLCJ3aWR0aCI6Ijw9NzY4In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.ArVaCTzci8CuY-eokN_qs7guKGBBmhko5WHk0h-iW-M"),
              fit: BoxFit.fitHeight,
            ),
          ),
          Text(
            "HELLO WORLD",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.limeAccent,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
