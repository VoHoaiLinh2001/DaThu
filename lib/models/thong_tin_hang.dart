import 'package:flutter/material.dart';

class Info {
  Info(
      {required this.avatar,
      required this.name,
      required this.current_ranking,
      required this.path_rank,
      required this.current_ranking_number});
  final String avatar;
  final String name;
  final String current_ranking;
  final String path_rank;
  final String current_ranking_number;
}
