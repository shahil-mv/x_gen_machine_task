

import 'package:equatable/equatable.dart';
import 'package:xgen_machine_task/features/screens/home/domain/model/note_model.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoadHomes extends HomeEvent {}

class AddHome extends HomeEvent {
  final Note notes;

  const AddHome(this.notes);

  @override
  List<Object> get props => [notes];
}

class UpdateHome extends HomeEvent {
  final Note notes;

  const UpdateHome(this.notes);

  @override
  List<Object> get props => [notes];
}

class DeleteHome extends HomeEvent {
  final String notes;

  const DeleteHome(this.notes);

  @override
  List<Object> get props => [notes];
}

class HomesUpdated extends HomeEvent {
  final List<Note> notes;

  const HomesUpdated(this.notes);

  @override
  List<Object> get props => [notes];
}