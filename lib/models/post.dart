import 'package:threads_clone/models/content.dart';
import 'package:threads_clone/models/user.dart';

class Post {
  final int id;
  final User user;
  final Content content;
  final DateTime createdDate;

  Post({
    required this.id,
    required this.user,
    required this.content,
    required this.createdDate,
  });
}
