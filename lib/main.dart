import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Primeiro App",
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primaryColor: Colors.purple,
          scaffoldBackgroundColor: Colors.purpleAccent,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.purpleAccent)),
      darkTheme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.grey,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.grey)),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBAr(),
      body: Center(
          child: Text(
        "Contagem $count",
        style: TextStyle(color: Colors.white, fontSize: 18),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyAppBAr extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white30,
      title: const Text("Aplicativo"),
      centerTitle: true,
    );
  }
}
