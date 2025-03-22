import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xgen_machine_task/features/screens/home/bloc/home_event.dart';
import 'package:xgen_machine_task/features/screens/home/bloc/home_state.dart';
import 'package:xgen_machine_task/features/screens/home/domain/repo/note_repo.dart';
import 'package:xgen_machine_task/shared/app/enums/api_fetch_status.dart';
// import 'package:xgen_machine_task/models/note.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<LoadHomes>(_onLoadHomes);
    on<AddHome>(_onAddHome);
    on<UpdateHome>(_onUpdateHome);
    on<DeleteHome>(_onDeleteHome);
  }

  Future<void> _onLoadHomes(LoadHomes event, Emitter<HomeState> emit) async {
    // emit(HomeLoading());
    try {
      emit(state.copyWith(noteFetchStatus: NoteFetchStatus.loading));
      print("LoadHomes");
      final notes = await HomeRepository().getNotes();
      print("notes $notes");
      if (notes.isEmpty) {
        emit(state.copyWith(noteFetchStatus: NoteFetchStatus.idle));
      } else {
        emit(
        state.copyWith(notes: notes, noteFetchStatus: NoteFetchStatus.success),
      );
      }
      
    } catch (e) {
      // emit(HomeError('Failed to load notes'));
    }
  }

  void _onAddHome(AddHome event, Emitter<HomeState> emit) async {
    await HomeRepository().addNote(event.notes);
  }

  void _onUpdateHome(UpdateHome event, Emitter<HomeState> emit) async {
    await HomeRepository().updateNote(event.notes);
  }

  void _onDeleteHome(DeleteHome event, Emitter<HomeState> emit) async {
    await HomeRepository().deleteNote(event.notes);
  }
}
