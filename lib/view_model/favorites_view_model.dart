import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_data_hive/core/functions/replace_ascii.dart';

import '../model/text_model.dart';

class FavoritesViewModel {
  var _favoriteList = Hive.box<TextModel>("favorites");

  Future<void> addFavoriteList(List<TextModel> list, int index)async {
    print("eklendi");
    print("${replaceAscii(list[index].title)}");
   await _favoriteList.put("${replaceAscii(list[index].title)}",
        TextModel(list[index].title, list[index].description));
  }
  Future<void> deleteFavoriteList(List<TextModel> list, int index)async{
    print("silindi");
   await _favoriteList.delete("${replaceAscii(list[index].title)}");
  }
  Box<TextModel> get favoriteList=>_favoriteList;
}
