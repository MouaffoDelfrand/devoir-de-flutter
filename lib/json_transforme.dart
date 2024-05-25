class Islam{
  var chapter;
  var verse;
  String text;

  Islam({required this.chapter, required this.verse, required this.text});

  factory Islam.fromJson(Map<String, dynamic> json)=> Islam(
      chapter: json['chapter'],
      verse: json['verse'],
      text: json['text']
  );
}