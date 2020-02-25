import 'package:arozd_cv/r.dart';
import 'package:flutter/cupertino.dart';

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
  static final List<Education> educationList = [
    Education(
      name: 'Vinnitsa Private Secondary School "AIST" (Stork)',
      dateFrom: 'Sep 2001',
      dateTo: 'May 2012',
      place: 'Vinnytsia',
    ),
    Education(
      name: 'Bachelor of Engineering (B.Eng.), '
          'Vinnytsia National Technical University',
      dateFrom: 'Sep 2012',
      dateTo: 'Jun 2016',
      place: 'Vinnytsia',
    ),
    Education(
      name: 'Master of Computer Applications (M.C.A.), '
          'Vinnytsia National Technical University',
      dateFrom: 'Sep 2016',
      dateTo: 'Jun 2018',
      place: 'Vinnytsia',
    ),
  ];
}

class Education {
  final String name;
  final String dateFrom;
  final String dateTo;
  final String place;
  const Education({
    @required this.name,
    @required this.dateFrom,
    @required this.dateTo,
    @required this.place,
  });
}
