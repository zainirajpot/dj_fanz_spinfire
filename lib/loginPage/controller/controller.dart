// import 'package:get/get.dart';

// class LoginController extends GetxController {
//    final List<bool> selectedContainers = [false, true].obs;
//    var selectedColor=false.obs;
 

//   void toggleContainer(int index) {
//     for (int i = 0; i < selectedContainers.length; i++) {
//       selectedContainers[i] = i == index;
//     }
//   }

 
  
  
// }
import 'package:get/get.dart';

class LoginController extends GetxController {
  final List<bool> selectedContainers = [false, true].obs;
  var selectedColor = false.obs;

  void toggleContainer(int index) {
    for (int i = 0; i < selectedContainers.length; i++) {
      selectedContainers[i] = i == index;
    }
  }
}
