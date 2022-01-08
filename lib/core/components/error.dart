import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  final String? errorText;
  const ErrorText({Key? key, this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorText ?? "Sayfa İçeriği Bulunamadı",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
