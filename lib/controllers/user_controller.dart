import 'package:evoting/models/user_model.dart';
import 'package:evoting/services/remote_service.dart';
import 'package:get/state_manager.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var user = List<User>.empty(growable: true).obs;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchUserData() async {
    try {
      isLoading(true);
      var data = await RemoteServices.fetchUserData();
      if (data.isNotEmpty) {
        user.value = data;
      }
    } finally {
      isLoading(false);
    }
  }
}
