// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TaskModel {
  String taskDescription;
  String taskStatus;
  num taskId;
  bool hasBugs;
  TaskModel({
    required this.taskDescription,
    required this.taskStatus,
    required this.taskId,
    required this.hasBugs,
  });

  TaskModel copyWith({
    String? taskDescription,
    String? taskStatus,
    num? taskId,
    bool? hasBugs,
  }) {
    return TaskModel(
      taskDescription: taskDescription ?? this.taskDescription,
      taskStatus: taskStatus ?? this.taskStatus,
      taskId: taskId ?? this.taskId,
      hasBugs: hasBugs ?? this.hasBugs,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskDescription': taskDescription,
      'taskStatus': taskStatus,
      'taskId': taskId,
      'hasBugs': hasBugs,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      taskDescription: map['taskDescription'] as String,
      taskStatus: map['taskStatus'] as String,
      taskId: map['taskId'] as num,
      hasBugs: map['hasBugs'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) => TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TaskModel(taskDescription: $taskDescription, taskStatus: $taskStatus, taskId: $taskId, hasBugs: $hasBugs)';
  }

  @override
  bool operator ==(covariant TaskModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.taskDescription == taskDescription &&
      other.taskStatus == taskStatus &&
      other.taskId == taskId &&
      other.hasBugs == hasBugs;
  }

  @override
  int get hashCode {
    return taskDescription.hashCode ^
      taskStatus.hashCode ^
      taskId.hashCode ^
      hasBugs.hashCode;
  }
}
