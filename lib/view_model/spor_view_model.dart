import 'package:local_data_hive/model/text_model.dart';

class SporViewModel {
  List<TextModel> _sporViewModel = [
    TextModel("Spor Başlık-1", "Spor Açıklama-1"),
    TextModel("Spor Başlık-2", "Spor Açıklama-2"),
    TextModel("Spor Başlık-3", "Spor Açıklama-3"),
    TextModel("Spor Başlık-4", "Spor Açıklama-4"),
    TextModel("Spor Başlık-5", "Spor Açıklama-5"),
  ];

  List<TextModel> get sporViewModel => _sporViewModel;

  static SporViewModel? _instance;

  static SporViewModel get instance {
    if (_instance == null) _instance = SporViewModel._init();
    return _instance!;
  }

  SporViewModel._init();
}
