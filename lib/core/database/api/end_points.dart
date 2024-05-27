class EndPoint {
  static const String backEndbaseUrl = 'https://backends-three.vercel.app/';
  static const String aibaseUrl = 'https://014c-156-193-21-22.ngrok-free.app/';
  static const String ourChildrenSignIn = '${backEndbaseUrl}auth/login';
  static const String ourChildrenRegister = '${backEndbaseUrl}auth/register';
  static const String ourChildrenSendForgetCode = '${backEndbaseUrl}auth/send-forget-code';
  static const String ourChildrenResetPassword = '${backEndbaseUrl}auth/reset-password';
  static const String ourChildrenCreatePerson = '${backEndbaseUrl}person/create';
  static const String ourChildrengetLostPerson = '${backEndbaseUrl}api/lost/';
  static const String ourChildrenGetAllFound = '${backEndbaseUrl}GETfound/allusers';
  static const String ourChildrenlogout = '${backEndbaseUrl}auth/logout';
  static const String ourChildrenDeleteRequest = '${backEndbaseUrl}delete/';
  static const String ourChildrenAddFace = '${aibaseUrl}add_face';
  static const String ourChildrenRecognizeFace = '${aibaseUrl}recognize';
  static const String ourChildrenDeletFace = '${aibaseUrl}delete_faces';
  static const String ourChildrengetAllFaces = '${aibaseUrl}all_faces';

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
  static const String userId = 'user_id';
  static const String file = 'file';
}
