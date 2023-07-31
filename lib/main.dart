import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';
import 'package:fruit_shebin/models/fruit_model.dart';
import 'package:fruit_shebin/screens/market_page.dart';
import 'package:fruit_shebin/widgets/homepage_body.dart';
import 'package:hive_flutter/adapters.dart';
import 'firebase_options.dart';


void main() async {
                WidgetsFlutterBinding.ensureInitialized();
                await Firebase.initializeApp(
                 options: DefaultFirebaseOptions.currentPlatform);
      /////init Hive ////
  await Hive.initFlutter();
  var box = await Hive.openBox(kFruitsBox);
  Hive.registerAdapter(FruitModelAdapter());


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,title: 'Fruits Shebin',
      home:HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: kPrimarycolor,
       body: MarketPage(),

    );
  }
}
