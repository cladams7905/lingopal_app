import 'package:uuid/uuid.dart';

class Avatar {
  final String _avatarId = const Uuid().v4();
  String? _filePath;
  DateTime? _uploadedAt;

  Avatar.base();

  Avatar(this._filePath, this._uploadedAt);

  String get getAvatarId {
    return _avatarId;
  }

  String? get getFilePath {
    return _filePath;
  }

  set setFilePath(String filePath) {
    _filePath = filePath;
  }

  DateTime? get getUploadedAtTime {
    return _uploadedAt;
  }
}
