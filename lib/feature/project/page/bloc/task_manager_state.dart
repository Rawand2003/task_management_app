// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_manager_bloc.dart';

@immutable
sealed class TaskManagerState {}

final class TaskManagerInitial extends TaskManagerState {}

class Success extends TaskManagerState {
  List<TaskModel> model;
  Success({
    required this.model,
  });
}

class Loading extends TaskManagerState{}