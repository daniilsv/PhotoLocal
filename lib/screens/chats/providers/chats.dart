import 'package:flutter/widgets.dart';
import 'package:photolocal/models/models.dart';

class ChatsProvider extends ChangeNotifier {
  ChatsProvider() {
    // this.chats = mock.photographers;
  }
  List<ChatItem> chats = [];
}
