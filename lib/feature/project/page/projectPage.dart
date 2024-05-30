import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_first_project/core/domain/model/taskmodel.dart';
import 'package:flutter_application_first_project/core/resourses/colors.dart';
import 'package:flutter_application_first_project/feature/project/class/AppbarWidget.dart';
import 'package:flutter_application_first_project/feature/project/class/DrawerWidget.dart';
import 'package:flutter_application_first_project/feature/project/class/FABWidget.dart';
import 'package:flutter_application_first_project/feature/project/class/TaskContainer.dart';
import 'package:flutter_application_first_project/feature/project/page/bloc/task_manager_bloc.dart';
import 'package:flutter_application_first_project/feature/widget/AppTextfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class projectPage extends StatefulWidget {
  projectPage({super.key});

  @override
  State<projectPage> createState() => _projectPageState();
}

class _projectPageState extends State<projectPage> {
  TextEditingController controller = TextEditingController();
  List<TaskModel> task_id = [];
  List<TaskModel> alltask = [];
  List<TaskModel> newtask = [];
  List<TaskModel> inprogresstask = [];
  List<TaskModel> donetask = [];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskManagerBloc(),
      child: Builder(builder: (context) {
        context.read<TaskManagerBloc>().add(GetTask(id: 11));
        return Scaffold(
          drawer: drawerWidget(
            userName: 'user name',
          ),
          floatingActionButton: FABWidget(),
          backgroundColor: ColorManager().backGround,
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: AppbarWidget(),
              ),
              // !!!!!!!!!
              // appBar:  AppbarWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: AppTextField(
                  textfieldwidth: 316,
                  textfieldhight: 218,
                  textfieldColor: ColorManager().yellow,
                  controller: controller,
                  max: 25,
                  hinttext: '',
                ),
              ),
              BlocBuilder<TaskManagerBloc, TaskManagerState>(
                builder: (context, state) {
                  if (state is Success) {
                    alltask = state.model.toList();
                    // alltask.forEach((element) {
                    //   if (element.taskStatus == "NEW") {
                    //     newtask.add(element);
                    //   } else  if(element.taskStatus == "IN"){

                    //   }
                    //  });

                    print(alltask);
                    newtask = alltask
                        .where((onlynewtask) => onlynewtask.taskStatus == "NEW")
                        .toList();
                    print(newtask);

                    inprogresstask = inprogresstask
                        .where((onlyinprogresstask) =>
                            onlyinprogresstask.taskStatus == "IN_PROGRESS")
                        .toList();
                    print(inprogresstask);

                    donetask = donetask
                        .where((onlydonetask) =>
                            onlydonetask.taskStatus == "COMPLETED")
                        .toList();
                    print(donetask);

                    return Expanded(
                        child: ListView.builder(
                            physics: AlwaysScrollableScrollPhysics(),
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    height: 400,
                                    width: 115,
                                    child: ListView.builder(
                                      itemCount: newtask.length,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Draggable(
                                          onDragEnd: (details) {
                                            
                                            context.read<TaskManagerBloc>().add(
                                                  UpdateTaskStatus(
                                                    id: 1,
                                                    task: TaskModel(taskDescription: state.model[index].taskDescription, taskStatus: "COMPLETED", taskId: state.model[index].taskId, hasBugs: state.model[index].hasBugs),
                                                  ),
                                                );
                                            setState(() {});
                                          },
                                          childWhenDragging: Container(
                                            color: Colors.red,
                                            width: 70,
                                            height: 70,
                                          ),
                                          feedback: Container(
                                            color: Colors.green,
                                            width: 80,
                                            height: 80,
                                          ),
                                          // TaskContainer(
                                          //   taskcolor: ColorManager().purple,
                                          //   tasdescripton: '',
                                          //   taskName: '',
                                          //   BugImage: '',
                                          //   taskNamecolor: ColorManager().textpurple,
                                          // ),
                                          child: TaskContainer(
                                            taskcolor: ColorManager().purple,
                                            tasdescripton: state
                                                .model[index].taskDescription,
                                            taskName: '',
                                            BugImage: '',
                                            taskNamecolor:
                                                ColorManager().textpurple,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 400,
                                    width: 115,
                                    child: ListView.builder(
                                      itemCount: inprogresstask.length,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        if (index == null) {
                                          return DragTarget(
                                            builder: (BuildContext context,
                                                List<Object?> candidateData,
                                                List<dynamic> rejectedData) {
                                              return Container(
                                                height: double.infinity,
                                                width: 30,
                                              );
                                            },
                                          );
                                        } else {
                                          return DragTarget(
                                            builder: (BuildContext context,
                                                List<Object?> candidateData,
                                                List<dynamic> rejectedData) {
                                              return TaskContainer(
                                                tasdescripton: inprogresstask
                                                    [index]
                                                    .taskDescription,
                                                taskName: '',
                                                BugImage: '',
                                                taskcolor: ColorManager().red,
                                                taskNamecolor:
                                                    ColorManager().textred,
                                              );
                                            },
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 400,
                                    width: 115,
                                    child: ListView.builder(
                                      itemCount: donetask.length,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return TaskContainer(
                                          taskcolor: ColorManager().green,
                                          tasdescripton: donetask
                                              [index].taskDescription,
                                          taskName: '',
                                          BugImage: '',
                                          taskNamecolor:
                                              ColorManager().textgreen,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            }));
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              )
            ],
          ),
        );
      }),
    );
  }
}
