import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int sandy =0;
  void chygar(){
    setState(() {
      sandy++;
    });
  }
  void aluu(){
    setState(() {
      sandy--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Bugunku sabak'),
        backgroundColor: Colors.cyan,
        actions: [Icon(Icons.search)],
        //leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            FlutterLogo(
              size: 250,
            ),
            SizedBox(height: 45,),
            Text('bul sabak boldu',style: TextStyle(fontSize: 25),),
            SizedBox(height: 45,),
            Card(
              color: Colors.greenAccent,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 78),
                child: Text(
                  '$sandy',
                  style: TextStyle(fontSize: 35, color: Colors.indigo),
                ),
              ),
            ),
            SizedBox(height: 45,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: chygar, child: Icon(Icons.add)),
                SizedBox(width: 45,),
                ElevatedButton(onPressed: aluu, child: Icon(Icons.remove)),
              ],
            )
            //Text('0'),
          ],
        ),
      ),
    );
  }
}
