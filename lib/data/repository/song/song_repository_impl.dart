import 'package:dartz/dartz.dart';
import 'package:ohkarao/data/sources/song/song_firebase_service.dart';
import 'package:ohkarao/domain/repository/song/song.dart';
import 'package:ohkarao/service_locator.dart';

class SongRepositoryImpl extends SongRepository {
  @override
  Future<Either> getNewsSong() async {
    return await sl<SongFirebaseService>().getNewsSong();
  }

  @override
  Future<Either> getPlayList() async {
    return await sl<SongFirebaseService>().getPlayList();
  }
}
