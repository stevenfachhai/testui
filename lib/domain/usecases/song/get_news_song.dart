import 'package:dartz/dartz.dart';
import 'package:ohkarao/core/usecase/usecase.dart';
import 'package:ohkarao/data/repository/song/song_repository_impl.dart';
import 'package:ohkarao/service_locator.dart';

class GetNewsSongUseCase implements Usecase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongRepositoryImpl>().getNewsSong();
  }
}
