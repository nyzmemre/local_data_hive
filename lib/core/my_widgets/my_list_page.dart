import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_data_hive/view_model/favorites_view_model.dart';

import '../../model/text_model.dart';

class MyListPage extends StatelessWidget {
  final String? appbarTitle;
  final List<TextModel>? list;
  final String? errorText;

  const MyListPage({Key? key, this.appbarTitle, this.list, this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle ?? "Appbar"),
      ),
      body: (list != null) ? _buildPageView() : errorWidget(context),
    );
  }

  PageView _buildPageView() {
    return PageView.builder(
      itemCount: list!.length,
      itemBuilder: (context, int index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [_card(index, context), indexBtnRow(index)],
          ),
        );
      },
    );
  }

  Widget _card(int index, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              list![index].title,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              list![index].description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }

  Row indexBtnRow(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("${index + 1} / ${list!.length}"),
        ValueListenableBuilder(
            valueListenable: Hive.box<TextModel>("favorites").listenable(),
            builder: (context, Box<TextModel> box, _) {
              FavoritesViewModel _favorites = FavoritesViewModel();
              return IconButton(
                  onPressed: () {
                    print(box.values
                        .any((element) => element.title == list![index].title));
                    if (box.values
                        .any((element) => element.title == list![index].title))
                      _favorites.deleteFavoriteList(list!, index);
                    else
                      _favorites.addFavoriteList(list!, index);
                  },
                  icon: (box.values.any(
                          (element) => element.title == list![index].title))
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border_outlined));
            })
      ],
    );
  }

  Widget errorWidget(BuildContext context) {
    return Center(
      child: Text(
        errorText ?? "Sayfa İçeriği Bulunamadı",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
