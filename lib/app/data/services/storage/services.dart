import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todoapp/app/core/utils/keys.dart';

class StoreService extends GetxService {
  late GetStorage _box;
  Future<StoreService> init() async {
    _box = GetStorage();
    //await _box.write(taskKey, []);
    await _box.writeIfNull(taskKey, []);
    return this;
  }

  T read<T>(String key) {
    return _box.read(key);
  }

  void write(String key, dynamic value) async {
    await _box.write(key, value);
  }
}
