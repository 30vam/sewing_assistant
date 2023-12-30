import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

//Application widget
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override  //We should always override build methods
  Widget build(BuildContext context) {
    return MaterialApp (
      title: "Sewing Assistant",  //Application name that is shown in task view
      theme: ThemeData(
          primaryColor: Colors.blue[200],
          scaffoldBackgroundColor: Colors.grey[300],
          appBarTheme: AppBarTheme(elevation: 3, backgroundColor: Colors.blue[200], centerTitle: true, shadowColor: Colors.black),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 5, backgroundColor: Colors.blue[100])
      ),
      home: const HomeWidget()
    );

  }
}

//Homepage widget
class HomeWidget extends StatefulWidget
{
  const HomeWidget({super.key});

  @override
  HomeWidgetState createState() => HomeWidgetState();
}

//Homepage widget state
class HomeWidgetState extends State<HomeWidget>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      bottomNavigationBar: BottomNavigationBar(
        items: const [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Patterns'),
          BottomNavigationBarItem(icon: Icon(Icons.shape_line), label: 'Shape')],
      ),
    );
  }
}