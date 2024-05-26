import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:our_children/Features/home/data/models/create_child_model.dart';
import 'package:our_children/core/database/api/api_consumer.dart';
import 'package:our_children/core/database/api/end_points.dart';
import 'package:our_children/core/errors/exceptions.dart';
import 'package:our_children/core/utils/commons.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());
  final ApiConsumer api;
  GlobalKey<FormState> searchKey = GlobalKey();
  GlobalKey<FormState> reportKey = GlobalKey();
  XFile? searchPic;
  XFile? reportPic;
  TextEditingController nameReportController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController cityReportController = TextEditingController();
  TextEditingController phoneReportController = TextEditingController();
  String? sellectedGander;
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

  // void uploadSearchPic(XFile image) {
  //   searchPic = image;
  //   emit(UploadSearchPic());
  // }

  // void uploadreportPic(XFile image) {
  //   searchPic = image;
  //   emit(UploadReportPic());
  // }

  void changeSellectedGander(String val) {
    sellectedGander = val;
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
          ApiKey.location: locationController.text,
          ApiKey.governorate: cityReportController.text,
          ApiKey.phone: phoneReportController.text,
          ApiKey.gender: sellectedGander
        },
      );
      createChildModel = CreateChildModel.fromJson(response);
      await addFace(createChildModel!.id!);
      emit(CreateChildSucessState());
    } on ServerException catch (e) {
      emit(CreateChildErrorState(message: e.errorModel.message));
    }
  }

  addFace(String userId) async {
    try {
      emit(AddFaceLoadingState());
      await api.post(
        EndPoint.ourChildrenAddFace,
        data: {
          ApiKey.userId: userId,
          ApiKey.file: await uploadImageToAPI(reportPic!),
        },
        isFormData: true,
      );
      emit(AddfaceSuccessState());
    } on ServerException catch (e) {
      emit(AddFaceErrorState(error: e.errorModel.message));
    }
  }
}
