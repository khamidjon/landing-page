import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:landing/app/resource/assets.dart';

const hiMessage = 'Hi, I am Khamidjon\nSenior Flutter Engineer';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              hiMessage,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
              ),
            ),
            const SizedBox(width: 100),
            Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24.0)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                child: Image.asset(AppImages.me),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
