import 'package:local_data_hive/model/text_model.dart';

class EducationViewModel{
  List<TextModel> _educationViewModel=[
    TextModel("Eğitim Başlık-1", "Eğitim Açıklama-1"),
    TextModel("Eğitim Başlık-2", "Eğitim Açıklama-2"),
    TextModel("Eğitim Başlık-3", "Eğitim Açıklama-3"),
    TextModel("Eğitim Başlık-4", "Eğitim Açıklama-4"),
    TextModel("Eğitim Başlık-5", "Eğitim Açıklama-5"),
  ];

  List<TextModel> get educationViewModel=>_educationViewModel;

  static EducationViewModel? _instance;
  static EducationViewModel get instance{
    if(_instance==null) _instance=EducationViewModel._init();
    return _instance!;
  }
  EducationViewModel._init();
}