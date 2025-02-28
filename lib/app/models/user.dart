class User {
  String? username;
  int? age;
  bool? gendre;

  User({this.username, this.age, this.gendre});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    age = json['age'];
    gendre = json['gendre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['age'] = this.age;
    data['gendre'] = this.gendre;
    return data;
  }
}