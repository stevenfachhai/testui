import 'package:get_it/get_it.dart';
import 'package:ohkarao/data/repository/auth/auth_repository_impl.dart';
import 'package:ohkarao/data/repository/song/song_repository_impl.dart';
import 'package:ohkarao/data/sources/auth/auth_firebase_service.dart';
import 'package:ohkarao/data/sources/song/song_firebase_service.dart';
import 'package:ohkarao/domain/repository/auth/auth.dart';
import 'package:ohkarao/domain/repository/song/song.dart';
import 'package:ohkarao/domain/usecases/auth/signin.dart';
import 'package:ohkarao/domain/usecases/auth/signup.dart';
import 'package:ohkarao/domain/usecases/song/get_news_song.dart';
import 'package:ohkarao/domain/usecases/song/get_play_list.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SongRepository>(SongRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<GetNewsSongUseCase>(GetNewsSongUseCase());

  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());
}
