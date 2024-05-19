class EndPoint {
  static const String baseUrl = 'https://3130-197-54-180-11.ngrok-free.app';
  static const String ourChildrenSignIn = 'auth/login';
  static const String ourChildrenRegister = 'auth/register';
  static const String ourChildrenSendForgetCode = 'auth/send-forget-code';
  static const String ourChildrenResetPassword = 'auth/reset-password';
  static const String ourChildrenFounPerson = 'person/FoundPerson';
  static const String ourChildrenLostPerson = 'person/LostPerson';
  static const String ourChildrengetLostPerson = 'lostPerson/getLost';
  static const String ourChildrenGetAllFound = 'getFound/foundPersons';
  static const String ourChildrenlogout = 'auth/logout';
  //   static const String updateChef = 'chef/update';
  // static const String addMeal = 'meal/add-to-menu';
  // static const String updateMeal = 'chef/update-meal/';
  // static const String deleteMeal = 'meal/delete-meal/';

  // static String getChefDataEndPoint(id) {
  //   return '$chefGet$id';
  // }

  // static String getupdateMealEndPoint(id) {
  //   return '$updateMeal$id';
  // }

  // static String getdeleteMealEndPoint(id) {
  //   return '$updateMeal$id';
  // }
}

class ApiKey {
  static const String status = 'status';
  static const String email = 'email';
  static const String password = 'password';
  static const String message = 'message';
  static const String errorMessage = 'ErrorMessage';
  static const String results = 'results';
  static const String id = 'id';
  static const String userName = 'userName';
  static const String confirmPassword = 'confirmPassword';
}
