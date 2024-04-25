import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_app_02/post.dart';
import 'package:future_app_02/post_page_vm.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.network("https://picsum.photos/id/50/200/200",
                fit: BoxFit.cover),
          ),
          PostItem(),
          ElevatedButton(onPressed: () {}, child: Text("값변경")),
        ],
      ),
    );
  }
}

class PostItem extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostPageModel? model = ref.watch(postPageProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      Post post = model.post;
      return Text(
          "id : ${post.id}, userId: ${post.userId}, title : ${post.title}");
    }
  }
}
