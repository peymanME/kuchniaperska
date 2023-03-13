
import 'package:custom_flutter_framework/models/dao/dao.dart';

class Photo implements Dao<Photo> {
  int? photoId;
  String? name;

  Photo({this.photoId, this.name});

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PhotoAttributes.PHOTO_ID: photoId,
      PhotoAttributes.NAME: name
    };
  }

  factory Photo.fromMap(Map<String, dynamic> entity) {
    return Photo(
      photoId: entity[PhotoAttributes.PHOTO_ID],
      name: entity[PhotoAttributes.NAME],
    );
  }

  @override
  String get createTableQuery =>
      "CREATE TABLE ${PhotoAttributes.PHOTO}(${PhotoAttributes.PHOTO_ID} INTEGER PRIMARY KEY,"
      " ${PhotoAttributes.NAME} TEXT)";

  @override
  List<Photo> fromList(List<Map<String, dynamic>> entities) {
    List<Photo> entityList = [];
    for (Map<String, dynamic> map in entities) {
      entityList.add(Photo.fromMap(map));
    }
    return entityList;
  }
}

class PhotoAttributes {
  static String PHOTO = 'photo';
  static String PHOTO_ID = 'photoId';
  static String NAME = 'name';
}
