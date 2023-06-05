import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Live Test 1",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          elevation: 10,
          title: Text("Flutter Live Test 1"),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.android,
            ),
            Icon(
              Icons.ios_share,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children:  [
              DrawerHeader(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa5-RznCNh6GXQ3QA8GV3BHiZOd_5lHq3FAbLzp3so-5Tfw4TjEXUOXAkdwRjka64NUx4&usqp=CAU",
                  width: 280,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.pages,
                ),
                title: const Text('Menu Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.pages,
                ),
                title: const Text('Menu Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.pink,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                child: Text(
                  "Ostad",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 100,
                width: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  "Ostad",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.android,
                size: 100,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa5-RznCNh6GXQ3QA8GV3BHiZOd_5lHq3FAbLzp3so-5Tfw4TjEXUOXAkdwRjka64NUx4&usqp=CAU",
                width: 280,
                height: 100,
                fit: BoxFit.contain,
              ),
              Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                onPressed: (){
                  print("Hello");
                },
                child: Text('Hello'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                ),
              ),
            ],

          ),
        ),
        floatingActionButton: SizedBox(
          height: 75,
          width: 75,
          child: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Page 1',
            foregroundColor: Colors.black,
            backgroundColor: Colors.blueGrey,
            child: const Icon(
                Icons.add,
              size: 30,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
