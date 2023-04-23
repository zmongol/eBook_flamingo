class BookChapter {
  BookChapter({
    this.title = '',
    this.image = '',
    this.auth = '',
    this.rating = 0,
    this.chapterNumber = 0,
    this.chapterTitle = '',
    this.content = '',
    this.releasedate = '',
  });

  String? title;
  String? image;
  String? auth;
  double? rating;
  int? chapterNumber;
  String? chapterTitle;
  String? content;
  String? releasedate;

//fetchList
  static List<BookChapter> fetchList(dynamic data) {
    if (data == null) return [];
    try {
      return List<BookChapter>.from(
          (data as List<dynamic>).map((e) => BookChapter.fromJson(e))).toList();
    } catch (e) {
      return [];
    }
  }

  factory BookChapter.fromJson(Map<String, dynamic> json) => BookChapter(
        title: json["title"] ?? "",
        image: json["image"] ?? "",
        auth: json["auth"] ?? "",
        rating: json["rating"] ?? 0,
        chapterNumber: json["chapterNumber"] ?? 0,
        chapterTitle: json["chapterTitle"] ?? "",
        content: json["content"] ?? "",
        releasedate: json["release_date"] ?? "",
      );
}
