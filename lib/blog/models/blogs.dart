class Blog {
  final String title;
  final String content;
  final String coverImage;
  final String author;
  final String authorImage;
  final DateTime createdAt;
  final bool isFavorite;
  final String id;

  Blog({
    required this.id,
    required this.title,
    required this.content,
    required this.coverImage,
    required this.author,
    required this.authorImage,
    required this.createdAt,
    required this.isFavorite,
  });
  Blog copyWith({
    String? title,
    String? content,
    String? coverImage,
    String? author,
    String? authorImage,
    DateTime? createdAt,
    bool? isFavorite,
    String? id,
  }) {
    return Blog(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      coverImage: coverImage ?? this.coverImage,
      author: author ?? this.author,
      authorImage: authorImage ?? this.authorImage,
      createdAt: createdAt ?? this.createdAt,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
