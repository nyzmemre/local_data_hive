import 'package:flutter/material.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
      body: Center(child: ElevatedButton(onPressed: (){}, child: Text("buton1"),)),
    );
  }
}
