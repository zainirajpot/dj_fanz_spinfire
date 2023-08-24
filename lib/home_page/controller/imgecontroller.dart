import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  var imagePath = RxString('');

  Future<void> getImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      imagePath.value = image.path;
    }
  }
}
