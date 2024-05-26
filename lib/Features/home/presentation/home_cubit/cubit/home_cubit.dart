import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:our_children/Features/home/data/models/create_child_model.dart';
import 'package:our_children/core/database/api/api_consumer.dart';
import 'package:our_children/core/database/api/end_points.dart';
import 'package:our_children/core/errors/exceptions.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());
  final ApiConsumer api;
  GlobalKey<FormState> searchKey = GlobalKey();
  GlobalKey<FormState> reportKey = GlobalKey();
  XFile? searchPic;
  XFile? reportPic;
  TextEditingController nameReportController = TextEditingController();
  TextEditingController ageReportController = TextEditingController();
  TextEditingController cityReportController = TextEditingController();
  TextEditingController phoneReportController = TextEditingController();
  String groupValue = 'boy';
  Future<void> imagePickerSearch() async {
    await ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then((value) => searchPic = value);
    // print(searchPic!.path);
    emit(ImagePickerState());
  }

  Future<void> imagePickerreport() async {
    await ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then((value) => reportPic = value);
    // print(searchPic!.path);
    emit(ImagePickerState());
  }

  void uploadSearchPic(XFile image) {
    searchPic = image;
    emit(UploadSearchPic());
  }

  void uploadreportPic(XFile image) {
    searchPic = image;
    emit(UploadReportPic());
  }

  void changeGroupVal(val) {
    groupValue = val;
    emit(ChangeGroupState());
  }

  CreateChildModel? createChildModel;
  createChild() async {
    try {
      emit(CreateChildLoadingState());
      final response = await api.post(
        EndPoint.ourChildrenCreatePerson,
        isFormData: true,
        data: {
          ApiKey.name: nameReportController.text,
          ApiKey.location: cityReportController.text,
          ApiKey.phone: phoneReportController.text,
          ApiKey.gender: groupValue
          
        },
      );
      createChildModel = CreateChildModel.fromJson(response);
      emit(CreateChildSucessState());
    } on ServerException catch (e) {
      emit(CreateChildErrorState(message: e.errorModel.message));
    }
  }
}
