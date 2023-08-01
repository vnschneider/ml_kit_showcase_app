import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ml_kit_showcase_app/src/screens/splash_screen.dart';
import 'src/utils/theme_data.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google ML Kit showcase app',
      //debugShowMaterialGrid: true,
      theme: themeData,
      home: const SplashScreen(),
      //routes: routes,
      //initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
