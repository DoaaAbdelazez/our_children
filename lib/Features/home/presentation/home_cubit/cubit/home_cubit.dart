import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  GlobalKey<FormState> searchKey = GlobalKey();
  GlobalKey<FormState> reportKey = GlobalKey();
  XFile? searchPic;
  XFile? reportPic;
  TextEditingController nameReportController = TextEditingController();
  TextEditingController ageReportController = TextEditingController();
  TextEditingController cityReportController = TextEditingController();
  TextEditingController phoneReportController = TextEditingController();
  String groupValue = 'boy';
  Future<void> imagePicker() async {
    await ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then((value) => searchPic = value);
    // print(searchPic!.path);
    emit(ImagePickerState());
  }

  void uploadSearchPic(XFile image) {
    searchPic = image;
    emit(UploadSearchPic());
  }

  void changeGroupVal(val) {
    groupValue = val;
    emit(ChangeGroupState());
  }
}
