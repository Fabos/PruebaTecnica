// To parse this JSON data, do
//
//     final contactModel = contactModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

ContactModel contactModelFromMap(String str) =>
    ContactModel.fromMap(json.decode(str));

String contactModelToMap(ContactModel data) => json.encode(data.toMap());

class ContactModel {
  ContactModel({
    this.results,
  });

  List<Result>? results;

  factory ContactModel.fromMap(Map<String, dynamic> json) => ContactModel(
        results: json["results"] == null
            ? null
            : List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "results": results == null
            ? null
            : List<dynamic>.from(results!.map((x) => x.toMap())),
      };
}

class Result {
  Result({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.phone,
    this.cell,
    this.picture,
  });

  String? gender;
  Name? name;
  Location? location;
  String? email;
  String? phone;
  String? cell;
  Picture? picture;

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        gender: json["gender"] == null ? null : json["gender"],
        name: json["name"] == null ? null : Name.fromMap(json["name"]),
        location: json["location"] == null
            ? null
            : Location.fromMap(json["location"]),
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        cell: json["cell"] == null ? null : json["cell"],
        picture:
            json["picture"] == null ? null : Picture.fromMap(json["picture"]),
      );

  Map<String, dynamic> toMap() => {
        "gender": gender == null ? null : gender,
        "name": name == null ? null : name!.toMap(),
        "location": location == null ? null : location!.toMap(),
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "cell": cell == null ? null : cell,
        "picture": picture == null ? null : picture!.toMap(),
      };
}

class Location {
  Location({
    this.city,
    this.state,
    this.country,
  });

  String? city;
  String? state;
  String? country;

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        city: json["city"] == null ? null : json["city"],
        state: json["state"] == null ? null : json["state"],
        country: json["country"] == null ? null : json["country"],
      );

  Map<String, dynamic> toMap() => {
        "city": city == null ? null : city,
        "state": state == null ? null : state,
        "country": country == null ? null : country,
      };
}

class Name {
  Name({
    this.title,
    this.first,
    this.last,
  });

  String? title;
  String? first;
  String? last;

  factory Name.fromMap(Map<String, dynamic> json) => Name(
        title: json["title"] == null ? null : json["title"],
        first: json["first"] == null ? null : json["first"],
        last: json["last"] == null ? null : json["last"],
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
        "first": first == null ? null : first,
        "last": last == null ? null : last,
      };
}

class Picture {
  Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  String? large;
  String? medium;
  String? thumbnail;

  factory Picture.fromMap(Map<String, dynamic> json) => Picture(
        large: json["large"] == null ? null : json["large"],
        medium: json["medium"] == null ? null : json["medium"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
      );

  Map<String, dynamic> toMap() => {
        "large": large == null ? null : large,
        "medium": medium == null ? null : medium,
        "thumbnail": thumbnail == null ? null : thumbnail,
      };
}
