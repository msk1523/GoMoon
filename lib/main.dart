import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoMoon',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1.0),
      ),
      home:
          HomePage(), //Scaffold is like a page in the MaterialApp that kindof wraps around the page in our application
    ); //MaterialApp is a wrapper function that encompases all the application within it and it knows how to interact within the func to spin up the app in a particular way
  }
}
