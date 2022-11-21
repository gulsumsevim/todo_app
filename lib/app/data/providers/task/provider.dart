import 'dart:convert';

import 'package:get/get.dart';
import 'package:todoapp/app/core/utils/keys.dart';
import 'package:todoapp/app/data/models/task.dart';
import 'package:todoapp/app/data/services/storage/services.dart';

class TaskProvider {
  final _store = Get.find<StoreService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_store.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _store.write(taskKey, jsonEncode(tasks));
  }
}
