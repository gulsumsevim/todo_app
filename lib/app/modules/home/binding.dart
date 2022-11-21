import 'package:get/instance_manager.dart';
import 'package:todoapp/app/data/providers/task/provider.dart';
import 'package:todoapp/app/data/services/storage/repository.dart';
import 'package:todoapp/app/modules/home/controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
