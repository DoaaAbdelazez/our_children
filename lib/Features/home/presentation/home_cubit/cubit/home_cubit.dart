import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  GlobalKey<FormState> searchKey = GlobalKey();
  TextEditingController nameSearchController = TextEditingController();
  TextEditingController ageSearchController = TextEditingController();
  TextEditingController citySearchController = TextEditingController();
  TextEditingController phoneSearchController = TextEditingController();
}
