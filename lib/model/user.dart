class User {
  String firstName;
  String lastName;
  List<Book> books;

  User({required this.firstName, required this.lastName, required this.books});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        firstName: json['firstName'],
        lastName: json['lastName'],
        books: (json['books'] as List)
            .map((book) => Book.fromJson(book))
            .toList());
  }
}

class Book {
  String title;
  String author;
  String details;
  String bookCover;
  double rating;
  List<Chapter> chapters;

  Book(
      {required this.title,
      required this.author,
      required this.details,
      required this.bookCover,
      required this.rating,
      required this.chapters});
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        title: json['title'],
        author: json['author'],
        details: json['details'],
        bookCover: json['bookCover'],
        rating: json['rating'],
        chapters: (json['chapters'] as List)
            .map((chapter) => Chapter.fromJson(chapter))
            .toList());
  }
}

class Chapter {
  String title;
  String description;
  List pages;
  Chapter(
      {required this.title, required this.description, required this.pages});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
        title: json['title'],
        description: json['description'],
        pages: json['pages']);
  }
}
