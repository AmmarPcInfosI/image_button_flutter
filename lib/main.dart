import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  Color c1=Colors.grey;
  Color c2=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Image Button'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            print("Image Button");
          },
          child: Image(image: NetworkImage('https://images.pexels.com/photos/18182736/pexels-photo-18182736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
        ),
      )
    );
  }
}

