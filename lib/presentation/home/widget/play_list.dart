import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ohkarao/domain/entities/song/song.dart';
import 'package:ohkarao/presentation/home/bloc/play_list_cubit.dart';
import 'package:ohkarao/presentation/home/bloc/play_list_state.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => PlayListCubit()..getPlayList(),
        child: BlocBuilder<PlayListCubit, PlayListState>(
          builder: (context, state) {
            if (state is PlayListLoading) {
              return Container(
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              );
            }
            if (state is PlayListloaded) {
              return const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Playlist'),
                      Text('aee more'),
                    ],
                  )
                ],
              );
            }
            return Container();
          },
        ));
  }

  Widget _songs(List<SongEntity> songs) {
    return Container();
  }
}
