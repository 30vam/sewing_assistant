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
      theme: appThemeData,
      home: const HomeWidget()
    );

  }
}

//Application theme
ThemeData appThemeData = ThemeData(
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: Colors.grey[200]
);

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

    );
  }
}