import 'package:flutter/widgets.dart';
import 'package:photolocal/api/api.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/chat/providers/chat.dart';

class ChatsProvider extends ChangeNotifier {
  ChatsProvider() {
    load();
  }
  bool isLoading = true;
  List<ChatItem> chats = [];
  Map<ChatItem, ChatProvider> providers = {};
  load() async {
    chats = await ChatApi.all();
    isLoading = false;
    notifyListeners();
  }

  getChatProvider(ChatItem item) {
    if (!providers.containsKey(item)) providers[item] = ChatProvider(item);
    return providers[item];
  }
}
