import 'package:equatable/equatable.dart';
import 'package:xgen_machine_task/features/screens/home/domain/model/note_model.dart';
import 'package:xgen_machine_task/shared/app/enums/api_fetch_status.dart';

class HomeState extends Equatable {
  final List<Note> notes;
  final NoteFetchStatus noteFetchStatus;

  // final double HomePageRawCount;

  const HomeState({
    this.notes = const [],
    this.noteFetchStatus = NoteFetchStatus.idle,
  });

  HomeState copyWith({List<Note>? notes, NoteFetchStatus? noteFetchStatus}) {
    return HomeState(notes: notes ?? this.notes,noteFetchStatus: noteFetchStatus ?? this.noteFetchStatus);
  }

  @override
  List<Object?> get props => [notes, noteFetchStatus];
}
