import 'englishTurkish.dart';
import 'turkishEnglish.dart';

class Questions {
  int id;
  String imageUrl;
  TurkishEnglish turkishEnglish;
  EnglishTurkish englishTurkish;

  Questions({this.id, this.imageUrl, this.turkishEnglish, this.englishTurkish});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    imageUrl = json['imageUrl'];
    turkishEnglish = json['turkishEnglish'] != null
        ? new TurkishEnglish.fromJson(json['turkishEnglish'])
        : null;
    englishTurkish = json['englishTurkish'] != null
        ? new EnglishTurkish.fromJson(json['englishTurkish'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    if (this.turkishEnglish != null) {
      data['turkishEnglish'] = this.turkishEnglish.toJson();
    }
    if (this.englishTurkish != null) {
      data['englishTurkish'] = this.englishTurkish.toJson();
    }
    return data;
  }
}
