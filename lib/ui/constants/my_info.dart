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
    'Xamarin',
    'Spring',
    'Android SDK',
    'Flutter SDK',
    'Design Patterns',
    'Algorithms',
    'Rx programming',
    'Design',
    'Analytical Skills',
    'iOS Developement',
    'Android Developement',
    'Backend Developement',
  ];
  static final String profileText =
      'I\'m experienced mobile and backend developer, '
      'adept in all stages of advanced web and mobile development.'
      '\n\nI\'m knowledgeable in user interface, design, testing, '
      'and debugging processes. I have great expertise in design, '
      'deploying, testing and maintenance of mobile applications and '
      'web systems. Equipped with a diverse and promising skill-set. '
      '\n\nI\'m froficient in an assortment of technologies, including Java, '
      'Spring, kotiln and Flutter. Able to effectively self-manage during '
      'independent projects, as well as collaborate in a team setting.';
  static final List<Employment> educationList = [
    Employment(
      title: 'Vinnitsa Private Secondary School "AIST" (Stork)',
      dateFrom: 'Sep 2001',
      dateTo: 'May 2012',
      place: 'Vinnytsia',
    ),
    Employment(
      title: 'Bachelor of Engineering (B.Eng.), '
          'Vinnytsia National Technical University',
      dateFrom: 'Sep 2012',
      dateTo: 'Jun 2016',
      place: 'Vinnytsia',
    ),
    Employment(
      title: 'Master of Computer Applications (M.C.A.), '
          'Vinnytsia National Technical University',
      dateFrom: 'Sep 2016',
      dateTo: 'Jun 2018',
      place: 'Vinnytsia',
    ),
  ];
  static final List<Employment> employments = [
    Employment(
      title: 'Junior Software Engineer, iKrok',
      dateFrom: 'Jan 2014',
      dateTo: 'Aug 2014',
      place: 'Vinnytsia',
      projects: [
        Project(
          name: 'Ride Genie (Taxi app)',
          description: 'An application called to help user in taxi searching.',
          responsibilities: [
            'Android and iOS development',
            'UI/UX implementation',
            'Google Maps integration',
            'Rest API integration',
          ],
        ),
      ],
    ),
    Employment(
      title: 'Software Engineer, Win Interactive',
      dateFrom: 'Aug 2014',
      dateTo: 'Jan 2018',
      place: 'Vinnytsia',
      projects: [
        Project(
          name: 'Poker Game App',
          description: 'An poker game application called to provide '
              'the best gaming experience for user.',
          url: 'https://www.partypoker.com/en/p/mobile',
          responsibilities: [
            'Android and iOS development',
            'UI/UX implementation',
            'Rest API integration',
            'Complex animations implementation',
            'Build delivery',
          ],
        ),
      ],
    ),
    Employment(
      title: 'Software Engineer, OnSeo',
      dateFrom: 'Jan 2018',
      dateTo: 'Present',
      place: 'Vinnytsia',
      projects: [
        Project(
          name: 'Virgin Bet: Sports Betting on Football & Racing',
          url: 'https://play.google.com/store/apps/details?id=com.'
              'virginbet.virginbetuk&hl=ru',
          responsibilities: [
            'Android and iOS development',
            'UI/UX implementation',
            'Google Maps integration',
            'Rest API integration',
          ],
        ),
      ],
    ),
  ];
}

class Employment {
  final String title;
  final String dateFrom;
  final String dateTo;
  final String place;
  final List<Project> projects;
  const Employment({
    @required this.title,
    @required this.dateFrom,
    @required this.dateTo,
    @required this.place,
    this.projects,
  });
}

class Project {
  final String name;
  final String description;
  final String url;
  final List<String> responsibilities;
  const Project({
    @required this.name,
    this.description,
    this.url,
    @required this.responsibilities,
  });
}
