import 'package:flutter/material.dart';

class CountrView extends StatefulWidget {
  const CountrView({super.key});

  @override
  State<CountrView> createState() => _CountrViewState();
}

class _CountrViewState extends State<CountrView> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "$count",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
          print(count);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
