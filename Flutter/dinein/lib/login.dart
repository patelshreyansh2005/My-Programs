import 'home.dart';
import 'package:flutter/material.dart';
import 'custom_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
              flex: 24,
              child: Image(
                image: AssetImage(
                  'images/logo/logo.png',
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: Text(
                'Welcome to',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black45,
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 10, bottom: 20, right: 10),
                child: Center(
                  child: CustomWidgets.myBoxshadow(
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const TextField(
                        decoration: InputDecoration(
                          enabledBorder: null,
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.orange,
                          ),
                          hintText: 'example@abc.xyz',
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 0, left: 10, bottom: 0, right: 10),
                child: Center(
                    child: CustomWidgets.myBoxshadow(
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        enabledBorder: null,
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.orange,
                        ),
                        hintText: 'Your password',
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 0, left: 0, bottom: 0, right: 10),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 20, top: 5, right: 20, bottom: 10),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'CONTINUE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 4,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Home();
                      },
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'New User? ',
                    ),
                    Text(
                      'Create an Account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 3,
              child: Text(
                'Or continue with',
                textAlign: TextAlign.center,
              ),
            ),
            const Expanded(
              flex: 12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.g_mobiledata,
                    size: 70,
                  ),
                  Icon(
                    Icons.facebook,
                    size: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
