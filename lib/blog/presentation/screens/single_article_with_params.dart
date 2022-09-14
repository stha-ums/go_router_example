import 'package:flutter/material.dart';
import 'package:go_router_learn/blog/controllers/single_blog_controller.dart';
import 'package:go_router_learn/blog/models/blogs.dart';

class SingleArticleWithParams extends StatefulWidget {
  final String id;
  const SingleArticleWithParams({super.key, required this.id});

  @override
  State<SingleArticleWithParams> createState() => _SingleArticleWithParamsState();
}

class _SingleArticleWithParamsState extends State<SingleArticleWithParams> {
  late final SingleBlogController blogController;
  @override
  void initState() {
    blogController = SingleBlogController()..get(widget.id);
    super.initState();
  }

  @override
  void dispose() {
    blogController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<Blog?>(
            stream: blogController.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final blog = snapshot.data!;
              return ListView(
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
              );
            }),
      ),
    );
  }
}
