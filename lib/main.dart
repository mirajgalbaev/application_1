import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(
        title: 'Men',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeView extends StatefulWidget {
  final String title;
  const HomeView({super.key, required this.title});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // ignore: unused_field
  int san = 0;
  void kosh() {
    setState(() {
      san = san + 1;
    });
  }

  void kemit() {
    if (san == 0) {
      setState(() {
        san = 0;
      });
    } else {
      setState(() {});

      san = san - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(294, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Сан: $san',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            Container(
              height: 32,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 44,
                width: 69,
                child: FloatingActionButton(
                  onPressed: () {
                    kemit();
                  },
                  backgroundColor: Colors.red,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
              Container(
                width: 25,
              ),
              SizedBox(
                height: 44,
                width: 69,
                child: FloatingActionButton(
                  onPressed: () {
                    kosh();
                  },
                  backgroundColor: Colors.red,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 28.0,
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
