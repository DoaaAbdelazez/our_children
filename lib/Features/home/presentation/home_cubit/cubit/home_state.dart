part of 'home_cubit.dart';

class HomeState {}

final class HomeInitial extends HomeState {}

final class SearchLoadingState extends HomeState {}

final class SearchSucessState extends HomeState {}

final class SearchErrorState extends HomeState {}

final class AddFaceLoadingState extends HomeState {}

final class AddfaceSuccessState extends HomeState {}

final class AddFaceErrorState extends HomeState {
  final String error;

  AddFaceErrorState({required this.error});
}

final class CreateChildLoadingState extends HomeState {}

final class CreateChildSucessState extends HomeState {}

final class CreateChildErrorState extends HomeState {
  final String message;

  CreateChildErrorState({required this.message});
}

final class ChangeGroupState extends HomeState {}

final class UploadSearchPic extends HomeState {}

final class UploadReportPic extends HomeState {}

final class ImagePickerState extends HomeState {}
