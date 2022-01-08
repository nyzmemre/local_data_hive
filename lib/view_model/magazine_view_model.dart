import 'package:local_data_hive/model/text_model.dart';

class MagazineViewModel{
  List<TextModel> _magazineViewModel=[
    TextModel("Magazine Başlık-1", "Magazine Açıklama-1"),
    TextModel("Magazine Başlık-2", "Magazine Açıklama-2"),
    TextModel("Magazine Başlık-3", "Magazine Açıklama-3"),
    TextModel("Magazine Başlık-4", "Magazine Açıklama-4"),
    TextModel("Magazine Başlık-5", "Magazine Açıklama-5"),
  ];

  List<TextModel> get magazineViewModel=>_magazineViewModel;

  static MagazineViewModel? _instance;
  static MagazineViewModel get instance{
    if(_instance==null) _instance=MagazineViewModel._init();
    return _instance!;
  }
  MagazineViewModel._init();
}