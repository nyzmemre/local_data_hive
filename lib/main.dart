import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_data_hive/model/text_model.dart';

import 'view/homepage_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter("localdatahive");
  Hive.registerAdapter(TextModelAdapter());
  await Hive.openBox<TextModel>("favorites");

  runApp(LocaDataHive());
}

class LocaDataHive extends StatelessWidget {
  const LocaDataHive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Local Data Hive",
          home: HomepageView(),
    );
  }
}
