import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_data_hive/core/my_widgets/my_list_page.dart';

import 'package:local_data_hive/model/text_model.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box<TextModel>("favorites").listenable(),
        builder: (context,Box<TextModel> box, _){
          return (box.values.length>0) ? MyListPage(appbarTitle: "Favoriler", list: box.values.toList(),) : MyListPage(appbarTitle: "Favoriler",errorText: "Favoriye Kart Eklemediniz",);
        },
      );
  }
}
