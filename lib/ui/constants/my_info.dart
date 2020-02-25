import 'package:arozd_cv/r.dart';

class MyInfo {
  static final String title = 'Anton Rozdorozhniuk CV';
  static final String phone = '+380936031715';
  static final String mail = 'anton.rozdorozhniuk@gmail.com';
  static final Map<String, String> links = {
    '${R.assetsImgLinkedin}':
        'https://www.linkedin.com/in/anton-rozdorozhniuk-b44969125/',
    '${R.assetsImgFacebook}': 'https://www.facebook.com/anton.rozdorogniuk',
    '${R.assetsImgGithub}': 'https://github.com/Antoraro',
  };
  static final String name = 'Anton Rozdorozhniuk';
  static final String position = 'Software Engineer';
  static final Map<String, double> languages = {
    'Ukrainian': 1.0,
    'Russian': 1.0,
    'English': 0.8,
  };
  static final List<String> skills = [
    'Java',
    'dart',
    'kotlin',
    'swift',
    'C#',
    'python',
    'Android SDK',
    'Flutter SDK',
    'Spring',
    'Xamarin',
    'iOS Developement',
    'Android Developement',
    'Backend Developement',
  ];
}
