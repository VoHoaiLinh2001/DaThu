import 'thong_tin_hang.dart';

class db_context_rank {
  static List<Info> items = List.filled(
    0,
    Info(
      avatar: '',
      name: '',
      current_ranking: '',
      path_rank: '',
      current_ranking_number: '',
    ),
    growable: true,
  );
  static void createData() {
    items.add(Info(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 1',
      current_ranking: 'Cảnh giới',
      path_rank: 'asset/icon_duanwei_06.png',
      current_ranking_number: '1',
    ));
    items.add(Info(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 2',
      current_ranking: 'Cảnh giới',
      path_rank: 'asset/icon_duanwei_05.png',
      current_ranking_number: '2',
    ));
    items.add(Info(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 3',
      current_ranking: 'Cảnh giới',
      path_rank: 'asset/icon_duanwei_04.png',
      current_ranking_number: '3',
    ));
    items.add(Info(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 4',
      current_ranking: 'Cảnh giới',
      path_rank: 'asset/icon_duanwei_03.png',
      current_ranking_number: '4',
    ));
    items.add(Info(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 5',
      current_ranking: 'Cảnh giới',
      path_rank: 'asset/icon_duanwei_02.png',
      current_ranking_number: '5',
    ));
    items.add(Info(
      avatar: 'asset/avatar.png',
      name: 'Pro Player 6',
      current_ranking: 'Cảnh giới',
      path_rank: 'asset/icon_duanwei_01.png',
      current_ranking_number: '6',
    ));
  }
}
