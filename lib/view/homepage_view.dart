import 'package:flutter/material.dart';
import 'package:local_data_hive/view/favorites_view.dart';

import '../core/my_widgets/my_list_page.dart';
import '../view_model/homepage_view_model.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () =>
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => FavoritesView()))),
        body: Center(
          child: ListView.builder(
          shrinkWrap: true,
          itemCount: HomepageViewModel.instance.homepageList.length,
          itemBuilder: (context, int index) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          MyListPage(
                            appbarTitle: HomepageViewModel
                                .instance.homepageList[index].appbarTitle,
                            list:
                            HomepageViewModel.instance.homepageList[index]
                                .list,
                          ),
                    ),
                  );
                },
                child: Text(
                  HomepageViewModel.instance.homepageList[index].appbarTitle,
                ),
              ),
            );
          }),
        ),);
  }
}
