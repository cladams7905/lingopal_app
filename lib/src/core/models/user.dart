import 'package:uuid/uuid.dart';
import '../../utils/enums.dart';
import './avatar.dart';

class User {
  final String _userId = const Uuid().v4();
  final DateTime _dateJoined = DateTime.now();
  String _username;
  String _password;
  String _email;
  String? _firstName;
  String? _lastName;
  String? _region;
  DateTime? _birthday;
  String? _phoneNumber;
  String? _personalBio;
  Avatar? _avatar;
  bool _isPaidAccount = false;
  bool _isVerified = false;
  dynamic _nativeLanguage;
  dynamic _targetLanguage;
  dynamic _languageLevel;
  dynamic userRole;

  User(this._username, this._password, this._email,
      {this.userRole = UserRole.member});

  User.full(this._username, this._password, this._email,
      [this._firstName,
      this._lastName,
      this._birthday,
      this._phoneNumber,
      this._region,
      this._personalBio,
      this._avatar,
      this._isPaidAccount = false,
      this._isVerified = false,
      this._nativeLanguage = NativeLanguage.english,
      this._targetLanguage = TargetLanguage.chinese,
      this._languageLevel = LanguageLevel.brandNew,
      this.userRole = UserRole.member]);

  void setAsAdmin() {
    if (!userRole.admin) {
      var admin = Admin(_username, _password, _email);
      //push admin to database
    }
  }

  String get getUserId {
    return _userId;
  }

  String get getUsername {
    return _username;
  }

  set setUsername(String username) {
    _username = username;
  }

  String get getPassword {
    return _password;
  }

  set setPassword(String password) {
    _password = password;
  }

  String? get getFirstName {
    return _firstName;
  }

  set setFirstName(String firstName) {
    _firstName = firstName;
  }

  String? get getLastName {
    return _lastName;
  }

  set setLastName(String lastName) {
    _lastName = lastName;
  }

  String get getEmail {
    return _email;
  }

  set setEmail(String email) {
    _email = email;
  }

  String? get getRegion {
    return _region;
  }

  set setRegion(String region) {
    _region = region;
  }

  DateTime? get getBirthday {
    return _birthday;
  }

  set setBirthday(DateTime birthday) {
    _birthday = birthday;
  }

  DateTime get getDateJoined {
    return _dateJoined;
  }

  String? get getPhoneNumber {
    return _phoneNumber;
  }

  set setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
  }

  String? get getPersonalBio {
    return _personalBio;
  }

  set setPersonalBio(String personalBio) {
    _personalBio = personalBio;
  }

  Avatar? get getAvatar {
    return _avatar;
  }

  set setAvatar(Avatar avatar) {
    _avatar = avatar;
  }

  bool get isPaidAccount {
    return _isPaidAccount;
  }

  set setAccountType(bool isPaidAccount) {
    _isPaidAccount = isPaidAccount;
  }

  bool get isVerifed {
    return _isVerified;
  }

  set setVerifiedStatus(bool isVerified) {
    _isVerified = isVerified;
  }

  NativeLanguage get getNativeLanguage {
    return _nativeLanguage;
  }

  set setNativeLanguage(NativeLanguage nativeLanguage) {
    _nativeLanguage = nativeLanguage;
  }

  TargetLanguage get getTargetLanguage {
    return _targetLanguage;
  }

  set setTargetLanguage(TargetLanguage targetLanguage) {
    _targetLanguage = targetLanguage;
  }

  LanguageLevel get getLanguageLevel {
    return _languageLevel;
  }

  set setLanguageLevel(LanguageLevel languageLevel) {
    _languageLevel = languageLevel;
  }

  UserRole get getUserRole {
    return userRole;
  }

  set setUserRole(UserRole userRole) {
    userRole = userRole;
  }
}

class Admin extends User {
  Admin(super._username, super._password, super._email,
      {super.userRole = UserRole.admin});

  String get getAdminUserId {
    return super._userId;
  }
}
