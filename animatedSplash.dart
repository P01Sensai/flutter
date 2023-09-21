import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: ClipOval(
                child: Image(
                  image: NetworkImage('https://picsum.photos/150/150'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                child: Text('Splash Screen testing', overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
          ],
        ),
      ),
      nextScreen: const MemoryCardGame(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 30000,
      backgroundColor: Colors.white,
    );
  }
}