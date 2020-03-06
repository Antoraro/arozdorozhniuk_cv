class MyInfo {
  String title;
  String cvLink;
  String phone;
  String mail;
  String skype;
  String name;
  String position;
  String profileText;
  String personalQualities;
  Map<String, String> links;
  Map<String, double> languages;
  List<String> skillList;
  List<Employment> educationList;
  List<Employment> employmentList;

  MyInfo(
      {this.title,
      this.cvLink,
      this.phone,
      this.mail,
      this.skype,
      this.name,
      this.position,
      this.profileText,
      this.personalQualities,
      this.links,
      this.languages,
      this.skillList,
      this.educationList,
      this.employmentList});

  MyInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cvLink = json['cvLink'];
    phone = json['phone'];
    mail = json['mail'];
    skype = json['skype'];
    name = json['name'];
    position = json['position'];
    profileText = json['profileText'];
    personalQualities = json['personalQualities'];
    links = Map<String, String>.from(json['links']);
    languages = Map<String, double>.from(json['languages']);
    skillList = json['skillList'].cast<String>();
    if (json['educationList'] != null) {
      educationList = new List<Employment>();
      json['educationList'].forEach((v) {
        educationList.add(new Employment.fromJson(v));
      });
    }
    if (json['employmentList'] != null) {
      employmentList = new List<Employment>();
      json['employmentList'].forEach((v) {
        employmentList.add(new Employment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['cvLink'] = this.cvLink;
    data['phone'] = this.phone;
    data['mail'] = this.mail;
    data['skype'] = this.skype;
    data['name'] = this.name;
    data['position'] = this.position;
    data['profileText'] = this.profileText;
    data['personalQualities'] = this.personalQualities;
    if (this.links != null) {
      data['links'] = this.links;
    }
    if (this.languages != null) {
      data['languages'] = this.languages;
    }
    data['skillList'] = this.skillList;
    if (this.educationList != null) {
      data['educationList'] =
          this.educationList.map((v) => v.toJson()).toList();
    }
    if (this.employmentList != null) {
      data['employmentList'] =
          this.employmentList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Employment {
  String title;
  String dateFrom;
  String dateTo;
  String place;
  List<Project> projects;

  Employment(
      {this.title, this.dateFrom, this.dateTo, this.place, this.projects});

  Employment.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    dateFrom = json['dateFrom'];
    dateTo = json['dateTo'];
    place = json['place'];
    if (json['projects'] != null) {
      projects = new List<Project>();
      json['projects'].forEach((v) {
        projects.add(new Project.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['dateFrom'] = this.dateFrom;
    data['dateTo'] = this.dateTo;
    data['place'] = this.place;
    if (this.projects != null) {
      data['projects'] = this.projects.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Project {
  String name;
  String description;
  List<String> responsibilities;
  String url;

  Project({this.name, this.description, this.responsibilities, this.url});

  Project.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    responsibilities = json['responsibilities'].cast<String>();
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['responsibilities'] = this.responsibilities;
    data['url'] = this.url;
    return data;
  }
}
