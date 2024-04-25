import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_app_02/post.dart';
import 'package:future_app_02/post_repository.dart';

// 1. 창고 데이터
class PostPageModel {
  Post post;

  PostPageModel(this.post);
}

// 2. 창고
class PostPageVM extends StateNotifier<PostPageModel?> {
  PostPageVM(super.state);

  Future<void> notifyInit() async {
    Post post = await PostRepository().findById(1);
    state = PostPageModel(post);
  }
}

// 3. 창고 관리자
final postPageProvider =
    StateNotifierProvider<PostPageVM, PostPageModel?>((ref) {
  PostPageVM vm = PostPageVM(null);
  vm.notifyInit();
  return vm;
});
