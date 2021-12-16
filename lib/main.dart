import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mood/helpInstitutions.dart';
import 'package:mood/home.dart';
import 'package:mood/splashscreen.dart';

List<CameraDescription>? cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: WlcomePage(),
      routes: {
        Home.routename: (context) => const Home(),
        Help.routename: (context) => const Help()
      },
    );
  }
}
