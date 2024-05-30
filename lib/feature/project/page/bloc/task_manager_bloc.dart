import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_first_project/core/domain/model/taskmodel.dart';
import 'package:flutter_application_first_project/feature/widget/AppCheckbox.dart';
import 'package:meta/meta.dart';

part 'task_manager_event.dart';
part 'task_manager_state.dart';

class TaskManagerBloc extends Bloc<TaskManagerEvent, TaskManagerState> {
  TaskManagerBloc() : super(TaskManagerInitial()) {
    List<TaskModel> tasks = [
      // TaskModel(
      //     taskDescription: 'taskDescription',
      //     taskStatus: 'NEW',
      //     taskId: 1,
      //     hasBugs: true),
      // TaskModel(
      //     taskDescription: 'taskDescription',
      //     taskStatus: 'IN_PROGRESS',
      //     taskId: 1,
      //     hasBugs: true),
      // TaskModel(
      //     taskDescription: 'taskDescription',
      //     taskStatus: 'COMPLETED',
      //     taskId: 1,
      //     hasBugs: true)
    ];
    on<GetTask>((event, emit) async {
      Dio req = Dio();
      Response response = await req.get(
          "https://projects-management-system.onrender.com/api/v1/tasks/tasks-by-project/1",
          options: Options(headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoaGhoaCIsImlhdCI6MTcxNzA4MTUyNywiZXhwIjoxNzE3Njg2MzI3fQ.AitD8KXs5B4TVyoVv25hIDCJLjXTTw52zaFaojAgTb4"
          }));

      tasks = List.generate(response.data.length,
          (index) => TaskModel.fromMap(response.data[index]));
      if (event.id > 10) {
        emit(Success(model: tasks));
      } else {
        emit(Loading());
      }
    });

    on<UpdateTaskStatus>((event, emit) async {
      Dio requst = Dio();

      Response response = await requst.put(
        'https://projects-management-system.onrender.com/api/v1/tasks/${event.task.taskId}',
        data: {
          "taskDescription": event.task.taskDescription,
          "taskStatus": "COMPLETED",
          "project_id": 1
        },
        options: Options(
          headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoaGhoaCIsImlhdCI6MTcxNzA4MTUyNywiZXhwIjoxNzE3Njg2MzI3fQ.AitD8KXs5B4TVyoVv25hIDCJLjXTTw52zaFaojAgTb4"
          },
        ),
      );

      if (response.statusCode == 200) {
        tasks.add(event.task);
        emit(Success(model: tasks));
      } else {
        emit(Loading());
      }
    });
  }
}
