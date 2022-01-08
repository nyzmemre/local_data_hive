import 'package:flutter/material.dart';

void main() {
  runApp(LocaDataHive());
}

class LocaDataHive extends StatelessWidget {
  const LocaDataHive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Local Data Hive",
          home: Scaffold(
        appBar: AppBar(title: Text("Hive Example"),),
            body: Center(child: Text("Firs Commit"),),
    )
    );
  }
}
