import 'package:book_app/models/books/book_chapter_model.dart';

class Book {
  Book({
    this.title = '',
    this.image = '',
    this.auth = '',
    this.content = '',
    this.rating = 0,
    this.chapters = const [],
  });

  String title;
  String image;
  String auth;
  String content;
  double rating;
  List<BookChapter> chapters;

  static List<Book> fetchList(dynamic data) {
    if (data == null) return [];
    try {
      return List<Book>.from((data as List<dynamic>).map((e) => Book.fetch(e)))
          .toList();
    } catch (e) {
      return [];
    }
  }

//fetch
  static Book fetch(List<dynamic> data) {
    if (data.isEmpty) return Book();
    try {
      Book book = Book.fromJson(data[0] as Map<String, dynamic>);
      return book..chapters = BookChapter.fetchList(data);
    } catch (e) {
      return Book();
    }
  }

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        title: json["title"] ?? "",
        image: json["image"] ?? "",
        auth: json["auth"] ?? "",
        content: json["content"] ?? "",
        rating: json["rating"] ?? 0,
      );
}
