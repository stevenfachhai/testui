import 'package:dartz/dartz.dart';

abstract class SongRepository {
  Future<Either> getNewsSong();
  Future<Either> getPlayList();
}
