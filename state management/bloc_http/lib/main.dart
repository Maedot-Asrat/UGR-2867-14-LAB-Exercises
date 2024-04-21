import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';

// Step 2: Create the Post model class
class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post({required this.id, required this.userId, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}

// Step 3: Create the PostEvent class
abstract class PostEvent {}

class FetchPosts extends PostEvent {}

class FetchPostDetails extends PostEvent {
  final int postId;

  FetchPostDetails(this.postId);
}

// Step 4: Create the PostState class
abstract class PostState {}

class PostsLoading extends PostState {}

class PostsLoaded extends PostState {
  final List<Post> posts;

  PostsLoaded(this.posts);
}

class PostDetailsLoading extends PostState {}

class PostDetailsLoaded extends PostState {
  final Post post;

  PostDetailsLoaded(this.post);
}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostsLoading());

  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is FetchPosts) {
      yield PostsLoading();
      try {
        final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        final List<dynamic> jsonData = json.decode(response.body);
        final List<Post> posts = jsonData.map((data) => Post.fromJson(data)).toList();
        yield PostsLoaded(posts);
      } catch (e) {
        yield PostsLoaded([]);
      }
    }

    if (event is FetchPostDetails) {
      yield PostDetailsLoading();
      try {
        final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/${event.postId}'));
        final jsonData = json.decode(response.body);
        final Post post = Post.fromJson(jsonData);
        yield PostDetailsLoaded(post);
      } catch (e) {
        yield PostDetailsLoaded(Post(id: 0, userId: 0, title: '', body: ''));
      }
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post App',
      home: BlocProvider(
        create: (context) => PostBloc()..add(FetchPosts()),
        child: PostScreen(),
      ),
    );
  }
}

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PostsLoaded) {
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return ListTile(
                  title: Text(post.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PostDetailsScreen(postId: post.id)),
                    );
                  },
                );
              },
            );
          } else {
            return Text('Failed to load posts');
          }
        },
      ),
    );
  }
}

class PostDetailsScreen extends StatelessWidget {
  final int postId;

  const PostDetailsScreen({required this.postId});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PostBloc>(context).add(FetchPostDetails(postId));

    return Scaffold(
      appBar: AppBar(title: Text('Post Details')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostDetailsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PostDetailsLoaded) {
            final post = state.post;
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title: ${post.title}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Body: ${post.body}'),
                ],
              ),
            );
          } else {
            return Text('Failed to load post details');
          }
        },
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}