import 'package:flutter/material.dart';
import 'package:mywishlist/widgets/account/account_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
// appBarTheme: AppBarTheme(b),
//         primarySwatch: Colors.greenAccent,
      ),
      home: AccountWidget(),
    );
  }
}
