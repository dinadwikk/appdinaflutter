import 'dart:convert';

List<Mwldata> mwldataFromJson(String str) => List<Mwldata>.from(json.decode(str).map((x) => Mwldata.fromJson(x)));

String mwldataToJson(List<Mwldata> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



class Mwldata {
    Mwldata({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    bool watched;
    String title;
    String rating;
    String releaseDate;
    String review;

    factory Mwldata.fromJson(Map<String, dynamic> json) => Mwldata(
        watched: json["fields"]["watched"],
        title: json["fields"]["title"], 
        rating: json["fields"]["rating"],
        releaseDate: json["fields"]["release_date"],
        review: json["fields"]["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
    };
}

