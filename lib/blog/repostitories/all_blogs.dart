import 'package:go_router_learn/blog/models/blogs.dart';
import 'package:go_router_learn/blog/repostitories/blogs_abstract.dart';
import 'package:go_router_learn/utils/random_string.dart';

class AllBlogsRepo implements BlogRepository {
  static final AllBlogsRepo _singleton = AllBlogsRepo._internal();
  factory AllBlogsRepo() {
    return _singleton;
  }
  AllBlogsRepo._internal();

  @override
  Future<List<Blog>> getBlogs() {
    return Future.value(allBlogs);
  }

  @override
  Future<void> toggleFevorite(String id) {
    final index = allBlogs.indexWhere((element) => id == element.id);
    if (index != -1) {
      allBlogs[index] = allBlogs[index].copyWith(isFavorite: !allBlogs[index].isFavorite);
    }
    return Future.value();
  }

  @override
  Future<List<Blog>> getFavoriteBlogs() {
    return Future.value(allBlogs.where((element) => element.isFavorite).toList());
  }

  final allBlogs = [
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: true,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: true,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: false,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
    Blog(
      id: getRandom(16),
      title: "Cupidatat ea nisi irure consectetur irure ea anim fugiat.",
      author: "Umesh Shrestha",
      authorImage: "https://i.redd.it/j79ui1di1l0y.png",
      createdAt: DateTime.now(),
      isFavorite: true,
      content:
          '''Mollit cillum sint eiusmod magna aliqua aliquip tempor deserunt officia sint magna aliqua Lorem nostrud. Tempor voluptate veniam esse sint pariatur nisi. Duis ex anim exercitation labore amet. Excepteur velit nostrud anim commodo dolor laborum veniam reprehenderit nulla. Eu Lorem excepteur magna sit.

Minim ea officia ipsum dolore sunt dolore sit tempor reprehenderit sint excepteur irure occaecat magna. Aute eiusmod adipisicing est culpa ea magna. Aute dolore reprehenderit ut reprehenderit veniam. Sint esse labore ad anim amet nostrud aliqua ullamco exercitation consequat labore irure. Magna cupidatat irure Lorem et cupidatat aute do anim occaecat minim consequat. Magna qui et ea amet eu excepteur in quis voluptate sunt proident culpa excepteur.

Nostrud proident ex incididunt veniam excepteur nisi laboris veniam tempor aute. Duis culpa esse magna nostrud sunt est ut incididunt velit proident. Velit minim irure esse quis ullamco veniam amet eu occaecat. Nostrud elit ad nisi occaecat amet laboris velit laborum eiusmod.

Fugiat do cillum ullamco ipsum culpa non. Reprehenderit sunt ipsum in cillum fugiat culpa deserunt labore. Nostrud culpa enim amet eiusmod sit ut.''',
      coverImage: "https://www.fotolip.com/wp-content/uploads/2016/05/Facebook-Cover-12.jpg",
    ),
  ];
}
