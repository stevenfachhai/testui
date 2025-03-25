import 'package:ohkarao/domain/entities/song/song.dart';

abstract class NewsSongsState {}

class NewsSongsLoading extends NewsSongsState {}

class NewsSongloaded extends NewsSongsState {
  final List<SongEntity> songs;
  NewsSongloaded({required this.songs});
}

class NewsSongsloadFailure extends NewsSongsState {}
