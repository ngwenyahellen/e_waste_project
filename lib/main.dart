import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:e_waste_project/screens/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBEvlQNsQPcBl5u72qvysvgfOoV0L1baXM",
        appId: "1:1000595707595:android:64b8294ef6184674ce6d4e",
        messagingSenderId: "1000595707595",
        projectId: "e-waste-project-b3e89"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-waste',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: Color.fromARGB(241, 10, 129, 64),
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SplashScreen(),
    );
  }
}
