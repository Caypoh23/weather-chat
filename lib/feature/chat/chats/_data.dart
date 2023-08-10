// Project imports:
import 'package:weather/conf/assets/image_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/core/models/chat/chat.dart';
import 'package:weather/core/models/message/message.dart';

class ChatsData {
  static List<Message> supportMessages = [
    Message(
      id: '5',
      text: 'Здравствуйте, обращайтесь',
      chatId: '0',
      isRead: true,
      name: MyStrings.support,
      avatar: MyImages.supportAvatar,
      sentTime: DateTime.now(),
    ),
    Message(
      id: '6',
      text: 'Привет, тут сообщение бла бла бла бла бла бла бла бла',
      chatId: '0',
      isRead: false,
      name: MyStrings.support,
      avatar: MyImages.supportAvatar,
      sentTime: DateTime.now(),
    ),
  ];

  static List<Message> messages1 = [
    Message(
      id: '1',
      text: 'Привет, жду свою посылку',
      chatId: '1',
      name: 'John Doe',
      isRead: true,
      sentTime: DateTime(DateTime.april, 15, 2021, 12, 30),
      avatar: MyImages.avatar,
    ),
    Message(
      id: '2',
      text: 'Привет, тут сообщение бла бла бла бла бла бла бла бла',
      name: 'Доставка Письма',
      chatId: '1',
      sentTime: DateTime.now(),
      avatar: MyImages.photo,
    ),
  ];

  static List<Message> messages2 = [
    Message(
      id: '3',
      text: 'Привет, жду свою посылку',
      chatId: '2',
      name: 'Налоговые отчеты',
      isRead: true,
      sentTime: DateTime(DateTime.april, 15, 2021, 12, 30),
      avatar: MyImages.photo,
    ),
    Message(
      id: '4',
      text: 'Здравствуйте, уже иду',
      name: 'Доставка Письма',
      isRead: true,
      chatId: '2',
      sentTime: DateTime.now(),
      avatar: MyImages.userAvatar,
    ),
    Message(
      id: '12',
      text: 'Привет, жду свою посылку',
      chatId: '2',
      name: 'Налоговые отчеты',
      isRead: true,
      sentTime: DateTime.now(),
      avatar: MyImages.photo,
    ),
    Message(
      id: '323',
      text: 'Здравствуйте, уже иду',
      name: 'Доставка Письма',
      isRead: true,
      chatId: '2',
      sentTime: DateTime(DateTime.april, 15, 2021, 12, 30),
      avatar: MyImages.userAvatar,
    ),
    Message(
      id: '33',
      text: 'Привет, жду свою посылку',
      chatId: '2',
      name: 'Налоговые отчеты',
      isRead: true,
      sentTime: DateTime.now(),
      avatar: MyImages.photo,
    ),
    Message(
      id: '45',
      text: 'Здравствуйте, уже иду',
      name: 'Доставка Письма',
      isRead: true,
      chatId: '2',
      sentTime: DateTime(DateTime.april, 15, 2021, 12, 30),
      avatar: MyImages.userAvatar,
    ),
    Message(
      id: '45',
      text: 'Здравствуйте, уже иду',
      name: 'Доставка Письма',
      isRead: true,
      chatId: '2',
      sentTime: DateTime(DateTime.april, 15, 2021, 12, 30),
      avatar: MyImages.userAvatar,
    ),
    Message(
      id: '45',
      text: 'Здравствуйте, уже иду',
      name: 'Доставка Письма',
      isRead: true,
      chatId: '2',
      sentTime: DateTime(DateTime.april, 15, 2021, 12, 30),
      avatar: MyImages.userAvatar,
    ),
  ];

  static List<Chat> chats = [
    Chat(
      id: '1',
      messages: messages1,
      otherName: 'Доставка Письма',
      unreadMessagesCount: 0,
    ),
    Chat(
      id: '2',
      messages: messages2,
      otherName: 'Доставка Письма',
      unreadMessagesCount: 0,
    ),
    Chat(
      id: '11',
      messages: messages1,
      otherName: 'Доставка Письма',
      unreadMessagesCount: 0,
    ),
    Chat(
      id: '24',
      messages: messages2,
      otherName: 'Доставка Письма',
      unreadMessagesCount: 0,
    ),
    Chat(
      id: '134',
      messages: messages1,
      otherName: 'Доставка Письма',
      unreadMessagesCount: 0,
    ),
    Chat(
      id: '25',
      messages: messages2,
      otherName: 'Доставка Письма',
      unreadMessagesCount: 0,
    ),
    Chat(
      id: '13',
      otherName: 'Доставка Письма',
      messages: messages1,
      unreadMessagesCount: 0,
    ),
    Chat(
      id: '22',
      otherName: 'Доставка Письма',
      messages: messages2,
      unreadMessagesCount: 0,
    ),
  ];

  static Chat supportChat = Chat(
    id: '0',
    otherName: MyStrings.support,
    messages: supportMessages,
    unreadMessagesCount: 2,
  );
}
