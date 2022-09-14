import 'package:flutter/material.dart';
import 'package:go_router_learn/blog/controllers/blog_controller.dart';
import 'package:go_router_learn/blog/models/blogs.dart';
import 'package:go_router_learn/blog/presentation/screens/single_blog_argument.dart';

class BlogLists extends StatelessWidget {
  final BlogController blogController;

  const BlogLists({
    super.key,
    required this.blogController,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Blog>>(
        stream: blogController.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final allBlogs = snapshot.data!;

          return ListView.builder(
            itemCount: allBlogs.length,
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text(allBlogs[index].title),
                subtitle: Text(
                  allBlogs[index].content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  onPressed: () {
                    blogController.toggleFavorite(allBlogs[index].id);
                  },
                  icon: Icon(allBlogs[index].isFavorite ? Icons.favorite : Icons.favorite_border_outlined),
                ),
                onTap: () {
                  // TODO: route

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return SingleArticle(blog: allBlogs[index]);
                  }));
                },
              );
            }),
          );
        });
  }
}
