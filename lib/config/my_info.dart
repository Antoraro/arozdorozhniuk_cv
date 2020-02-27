class MyInfo {
  String title;
  String phone;
  String mail;
  String name;
  String position;
  String profileText;
  Map<String, String> links;
  Map<String, double> languages;
  List<String> skillList;
  List<Employment> educationList;
  List<Employment> employments;

  MyInfo(
      {this.title,
      this.phone,
      this.mail,
      this.name,
      this.position,
      this.profileText,
      this.links,
      this.languages,
      this.skillList,
      this.educationList,
      this.employments});

  MyInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    phone = json['phone'];
    mail = json['mail'];
    name = json['name'];
    position = json['position'];
    profileText = json['profileText'];
    links = Map<String, String>.from(json['links']);
    languages = Map<String, double>.from(json['languages']);
    skillList = json['skillList'].cast<String>();
    if (json['educationList'] != null) {
      educationList = new List<Employment>();
      json['educationList'].forEach((v) {
        educationList.add(new Employment.fromJson(v));
      });
    }
    if (json['employments'] != null) {
      employments = new List<Employment>();
      json['employments'].forEach((v) {
        employments.add(new Employment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['phone'] = this.phone;
    data['mail'] = this.mail;
    data['name'] = this.name;
    data['position'] = this.position;
    data['profileText'] = this.profileText;
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
    if (this.employments != null) {
      data['employments'] = this.employments.map((v) => v.toJson()).toList();
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
