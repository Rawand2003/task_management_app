// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_manager_bloc.dart';

@immutable
sealed class TaskManagerEvent {}

class GetTask extends TaskManagerEvent {
  int id;
  GetTask({
    required this.id,
  });
}

class UpdateTaskStatus extends TaskManagerEvent {
  int id;
  TaskModel task;
  UpdateTaskStatus({
    required this.id,
    required this.task,
  });
}
