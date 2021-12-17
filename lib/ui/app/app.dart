import 'package:flutter/material.dart';
import 'package:flutter_country/ui/screen/country_list_screen/country_list_screen.dart';

/// App main widget.
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countries',
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      darkTheme: ThemeData.dark(),
      home: const CountryListScreen(),
    );
  }
}
