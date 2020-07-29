class EnglishTurkish {
  String question;
  List<String> answers;
  String trueAnswer;

  EnglishTurkish({this.question, this.answers, this.trueAnswer});

  EnglishTurkish.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answers = json['answers'].cast<String>();
    trueAnswer = json['trueAnswer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['answers'] = this.answers;
    data['trueAnswer'] = this.trueAnswer;
    return data;
  }
}
