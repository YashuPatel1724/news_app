class NewsModal {
  late List<Articles> articles = [];

  NewsModal(this.articles);

  factory NewsModal.fromMap(Map m1) {
    return NewsModal((m1['articles'] as List)
        .map(
          (e) => Articles.fromMap(e),
        )
        .toList());
  }
}

class Articles {
  late String author, title, description, url, urlToImage, content;
  late Source source;

  Articles(this.author, this.title, this.description, this.url, this.urlToImage,
      this.content, this.source);

  factory Articles.fromMap(Map m1) {
    return Articles(m1['author'] ?? '', m1['title'] ?? '', m1['description'] ?? '', m1['url'] ?? '',
        m1['urlToImage'] ?? '', m1['content'] ?? '', Source.fromMap(m1['source']?? ''));
  }
}

class Source {
  late String id, name;

  Source(this.id, this.name);

  factory Source.fromMap(Map m1) {
    return Source(m1['id'] ?? '', m1['name']);
  }
}
