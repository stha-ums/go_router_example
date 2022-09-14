import 'package:flutter/material.dart';
import 'package:go_router_learn/blog/models/blogs.dart';

class SingleArticle extends StatelessWidget {
  final Blog blog;
  const SingleArticle({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(blog.title, style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 10),
            Image.network(blog.coverImage),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(backgroundImage: NetworkImage(blog.authorImage)),
                const SizedBox(width: 10),
                Text(blog.author),
              ],
            ),
            Text(blog.content),
          ],
        ),
      ),
    );
  }
}
