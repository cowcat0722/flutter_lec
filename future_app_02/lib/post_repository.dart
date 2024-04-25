import 'package:dio/dio.dart';
import 'package:future_app_02/post.dart';

class PostRepository {
  Dio dio = Dio();

  Future<Post> findById(int id) async {
    // dio 통신 -> List(컬렉션), Map(한 건) -> final로 하는게 좋다
    // Response<Map<String, dynamic>> response =
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts/${id}");

    final body = response.data!;

    Post post = Post.fromMap(body);
    // print(body);
    // print(body.runtimeType);
    return post;
  }
}
