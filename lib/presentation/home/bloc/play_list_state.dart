import 'package:ohkarao/domain/entities/song/song.dart';

abstract class PlayListState {}

class PlayListLoading extends PlayListState {}

class PlayListloaded extends PlayListState {
  final List<SongEntity> songs;
  PlayListloaded({required this.songs});
}

class PlayListloadFailure extends PlayListState {}
