import 'package:calm_ui/src/presentation/screens/pages/beranda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/background_decoration.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(
          duration: const Duration(milliseconds: 11000),
          backgroundColor: Colors.white,
          showStatusBar: true,
          backgroundImageDecoration: const BackgroundImageDecoration(
            image: AssetImage('assets/img/calm intro.gif'),
            fit: BoxFit.fill,
          ),
          done: Done(
            const MyApp(),
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calm UI App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Beranda(),
    );
  }
}
