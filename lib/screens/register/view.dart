import 'package:flutter/material.dart';
import 'package:new_array_app/shared/design/my_bottom_navigation_bar.dart';

import '../../shared/design/my_input.dart';
import '../login/view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 20, top: 20, bottom: 20),
          child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const MyBottomNavigationBar(),
              ),
              );
            },
            icon:
                const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 51,
            ),
            const Text(
              'CREATE \nA NEW ACCOUNT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(height: 38),
            MyInput(
              title: 'Full name ',
            ),
            MyInput(
              title: 'Email address ',
            ),
            MyInput(
              title: 'password ',
              isPassword: true,
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 63, end: 63),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(294, 54),
                ),
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 60),
              child: Row(
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 17, color: Color(0xff090808)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute (
                        builder: (BuildContext context) => const LoginScreen(),
                      ),);
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 17, color: Color(0xff034C65)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 120,),
          ],
        ),
      ),
    );
  }
}
