import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'view/homepage_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter("localdatahive");
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
            body: HomepageView(),),
    );
  }
}
