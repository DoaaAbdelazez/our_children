import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  GlobalKey<FormState> searchKey = GlobalKey();
  GlobalKey<FormState> reportKey = GlobalKey();
  TextEditingController nameReportController = TextEditingController();
  TextEditingController ageReportController = TextEditingController();
  TextEditingController cityReportController = TextEditingController();
  TextEditingController phoneReportController = TextEditingController();
  String groupValue = 'boy';
  void changeGroupVal(val) {
    groupValue = val;
    emit(ChangeGroupState());
  }
}
