import 'package:flutter/widgets.dart';

class Message {
  String message;
  bool isMyMessage = false;
}

class ChatProvider extends ChangeNotifier {
  // this.reportProvider
  ChatProvider() {
    scrollController.addListener(_scrollListener);
  }
  // ReportProvider reportProvider;

  TextEditingController inputController = TextEditingController();

  List<Message> messages = [];
  int firstId = -1;
  int lastId = -1;
  bool isLoading = false;

  Message editingMessage;

  ScrollController scrollController = ScrollController(initialScrollOffset: 0, keepScrollOffset: true);

  loadLast() async {
    // messages = await ChatApi.getMessages(
    //     reportProvider.code, reportProvider.report.uuid);
    notifyListeners();
    loadPrevious();
  }

  loadNext() async {
    // List<Message> _messages = await ChatApi.getMessages(
    //     reportProvider.code, reportProvider.report.uuid,
    //     firstId: lastId);
    // messages.removeWhere((element) => element.id == -1);
    // messages = _messages + messages;
    // if (messages.length != 0) lastId = messages.first.id;
    notifyListeners();
  }

  loadPrevious() async {
    if (isLoading) return;
    if (firstId != -1) return;
    setLoading(true);
    // List<Message> _messages = await ChatApi.getMessages(
    //     reportProvider.code, reportProvider.report.uuid,
    //     lastId: messages.length != 0 ? messages?.last?.id ?? 0 : 0);
    // messages.addAll(_messages);
    // if (messages.length != 0) lastId = messages.first.id;
    // if (_messages.length == 0)
    //   firstId = messages.length != 0 ? messages?.last?.id ?? -1 : -1;
    // else if (_messages.length < 20) firstId = _messages.last.id;
    setLoading(false);
  }

  setLoading(bool _isLoading) {
    isLoading = _isLoading;
    notifyListeners();
  }

  _scrollListener() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      loadPrevious();
    }
  }

  void onSave() async {
    if (editingMessage != null) {
      cancelEditing();
      return;
    }
    String message = inputController.text;
    if (message.length == 0) return;
    inputController.text = "";
    // messages.insert(
    //     0,
    //     (MessageBuilder()
    //           ..id = -1
    //           ..isMyMessage = 1
    //           ..message = message
    //           ..dtMsg = DateTime.now())
    //         .build());
    notifyListeners();
    int newId;
    try {
      // newId = await ChatApi.send(
      //     reportProvider.code, reportProvider.report.uuid, message);
    } catch (e) {}
    if (newId == null) return;
    loadNext();
  }

  void setEditingMessage(Message message) {
    editingMessage = message;
    inputController.text = message.message;
    notifyListeners();
  }

  void cancelEditing() {
    editingMessage = null;
    inputController.text = "";
    notifyListeners();
  }
}
