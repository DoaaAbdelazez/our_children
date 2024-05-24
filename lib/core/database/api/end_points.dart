class EndPoint {
  static const String baseUrl = 'https://backends-three.vercel.app/';
  static const String ourChildrenSignIn = 'auth/login';
  static const String ourChildrenRegister = 'auth/register';
  static const String ourChildrenSendForgetCode = 'auth/send-forget-code';
  static const String ourChildrenResetPassword = 'auth/reset-password';
  static const String ourChildrenCreatePerson = 'person/create';
  static const String ourChildrengetLostPerson = 'api/lost/';
  static const String ourChildrenGetAllFound = 'GETfound/allusers';
  static const String ourChildrenlogout = 'auth/logout';
  static const String ourChildrenDeleteRequest = 'delete/';

  static String getrequestEndPoint(id) {
    return '$ourChildrengetLostPerson$id';
  }

  static String delrequestEndPoint(id) {
    return '$ourChildrenDeleteRequest$id';
  }

  // static String getdeleteMealEndPoint(id) {
  //   return '$updateMeal$id';
  // }
}

class ApiKey {
  static const String success = 'success';
  static const String status = 'status';

  static const String email = 'email';
  static const String password = 'password';
  static const String message = 'message';
  static const String results = 'results';
  static const String id = 'id';
  static const String userName = 'userName';
  static const String confirmPassword = 'confirmPassword';
  static const String stack = 'stack';
  static const String name = 'name';
  static const String gender = 'gender';
  static const String location = 'location';
  static const String governorate = 'governorate';
  static const String phone = 'phone';
  static const String forgetCode = 'forgetCode';
}
