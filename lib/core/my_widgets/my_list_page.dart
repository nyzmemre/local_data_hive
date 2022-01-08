import 'package:flutter/material.dart';
import 'package:local_data_hive/model/text_model.dart';

class MyListPage extends StatelessWidget {
  final String? appbarTitle;
  final List<TextModel>? list;

  const MyListPage({Key? key, this.appbarTitle, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appbarTitle ?? "Appbar"),
        ),
        body: (list != null)
            ? PageView.builder(
                itemBuilder: (context, int index) {
                  return Column(
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
                  );
                },
              )
            : Text(
                "Sayfa İçeriği Bulunamadı",
                style: Theme.of(context).textTheme.headline6,
              ));
  }
}
