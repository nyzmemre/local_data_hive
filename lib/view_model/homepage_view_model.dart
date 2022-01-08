import '../model/homepage_model.dart';
import 'education_view_model.dart';
import 'magazine_view_model.dart';
import 'spor_view_model.dart';

class HomepageViewModel {
  List<HomepageModel> _homepageList = [
    HomepageModel("Spor", SporViewModel.instance.sporViewModel),
    HomepageModel("Eğitim", EducationViewModel.instance.educationViewModel),
    HomepageModel("Magazin", MagazineViewModel.instance.magazineViewModel),
  ];

  List<HomepageModel> get homepageList => _homepageList;

  static HomepageViewModel? _instance;

  static HomepageViewModel get instance {
    if (_instance == null) _instance = HomepageViewModel._init();
    return _instance!;
  }

  HomepageViewModel._init();
}
