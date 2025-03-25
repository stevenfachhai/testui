import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ohkarao/domain/usecases/song/get_play_list.dart';
import 'package:ohkarao/presentation/home/bloc/play_list_state.dart';
import 'package:ohkarao/service_locator.dart';

class PlayListCubit extends Cubit<PlayListState> {
  PlayListCubit() : super(PlayListLoading());

  Future<void> getNewsSongs() async {
    var returnedSongs = await sl<GetPlayListUseCase>().call();

    returnedSongs.fold((l) {
      emit(PlayListloadFailure());
    }, (data) {
      emit(PlayListloaded(songs: data));
    });
  }

  getPlayList() {}
}
