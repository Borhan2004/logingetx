import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_getx/login_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LoginController controller = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text('GetX Login')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,

              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                controller.loginApi();
              },
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(child: Text('Login')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
