import 'thong_tin_ban_be.dart';

class db_context_ban_be {
  static List<Thong_tin_ban_be> items = List.filled(
    0,
    Thong_tin_ban_be(
      avatar: '',
      name: '',
      current_ranking: '',
      icon_chat: '',
      icon_cancel: '',
      icon_accept: '',
    ),
    growable: true,
  );
  static void createData() {
    items.add(Thong_tin_ban_be(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 1',
      current_ranking: 'Cảnh giới',
      icon_chat: 'asset/zhucheng_liaotian.png',
      icon_cancel: 'asset/cancel.png',
      icon_accept: 'asset/accept.jpg',
    ));
    items.add(Thong_tin_ban_be(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 2',
      current_ranking: 'Cảnh giới',
      icon_chat: 'asset/zhucheng_liaotian.png',
      icon_cancel: 'asset/cancel.png',
      icon_accept: 'asset/accept.jpg',
    ));
    items.add(Thong_tin_ban_be(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 3',
      current_ranking: 'Cảnh giới',
      icon_chat: 'asset/zhucheng_liaotian.png',
      icon_cancel: 'asset/cancel.png',
      icon_accept: 'asset/accept.jpg',
    ));
    items.add(Thong_tin_ban_be(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 4',
      current_ranking: 'Cảnh giới',
      icon_chat: 'asset/zhucheng_liaotian.png',
      icon_cancel: 'asset/cancel.png',
      icon_accept: 'asset/accept.jpg',
    ));
    items.add(Thong_tin_ban_be(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 5',
      current_ranking: 'Cảnh giới',
      icon_chat: 'asset/zhucheng_liaotian.png',
      icon_cancel: 'asset/cancel.png',
      icon_accept: 'asset/accept.jpg',
    ));
    items.add(Thong_tin_ban_be(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 6',
      current_ranking: 'Cảnh giới',
      icon_chat: 'asset/zhucheng_liaotian.png',
      icon_cancel: 'asset/cancel.png',
      icon_accept: 'asset/accept.jpg',
    ));
  }
}
