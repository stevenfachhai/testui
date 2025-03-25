import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ohkarao/domain/usecases/song/get_news_song.dart';
import 'package:ohkarao/presentation/home/bloc/news_songs_state.dart';
import 'package:ohkarao/service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoading());

  Future<void> getNewsSongs() async {
    var returnedSongs = await sl<GetNewsSongUseCase>().call();

    returnedSongs.fold((l) {
      emit(NewsSongsloadFailure());
    }, (data) {
      emit(NewsSongloaded(songs: data));
    });
  }
}
