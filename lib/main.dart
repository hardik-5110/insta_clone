import 'package:flutter/material.dart';
import 'package:insta_/home_page.dart';
import 'package:insta_/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: const AppBarTheme(
            elevation: 1,
            color: Colors.white,
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1))),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: currentPage == 1 ? searchPage() : HomePage(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: currentPage == 0
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                icon: Icon(
                  Icons.ondemand_video,
                  color: currentPage == 0
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                icon: Icon(
                  Icons.card_travel,
                  color: currentPage == 0
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: currentPage == 0
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
