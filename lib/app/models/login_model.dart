class LoginModel {
  final int? executionState;
  final String? message;
  final Data? data;

  LoginModel({
    this.executionState,
    this.message,
    this.data,
  });

  LoginModel.fromJson(Map<String, dynamic> json)
      : executionState = json['ExecutionState'] as int?,
        message = json['Message'] as String?,
        data = (json['Data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['Data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'ExecutionState' : executionState,
    'Message' : message,
    'Data' : data?.toJson()
  };
}

class Data {
  final int? userId;
  final String? userName;
  final String? userEmail;
  final String? token;
  final String? roleName;
  final String? mobileNumber;

  Data({
    this.userId,
    this.userName,
    this.userEmail,
    this.token,
    this.roleName,
    this.mobileNumber,
  });

  Data.fromJson(Map<String, dynamic> json)
      : userId = json['userId'] as int?,
        userName = json['userName'] as String?,
        userEmail = json['userEmail'] as String?,
        token = json['token'] as String?,
        roleName = json['roleName'] as String?,
        mobileNumber = json['mobileNumber'] as String?;

  Map<String, dynamic> toJson() => {
    'userId' : userId,
    'userName' : userName,
    'userEmail' : userEmail,
    'token' : token,
    'roleName' : roleName,
    'mobileNumber' : mobileNumber
  };
}