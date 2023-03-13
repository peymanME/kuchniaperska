
import 'package:custom_flutter_framework/models/dao/dao.dart';
import 'package:kuchnia_perska/src/models/photo.dart';
import 'package:kuchnia_perska/src/models/restaurant.dart';

class RestaurantPhoto implements Dao<RestaurantPhoto> {
  int? restaurantPhotoId;
  Restaurant? restaurant;
  Photo? photo;

  RestaurantPhoto({this.restaurantPhotoId, this.photo, this.restaurant});

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      RestaurantPhotoAttributes.RESTAURANT_PHOTO_ID: restaurantPhotoId,
      RestaurantAttributes.RESTAURANT: restaurant?.toMap(),
      PhotoAttributes.PHOTO: photo?.toMap()
    };
  }

  Map<String, dynamic> toMapDao() {
    return <String, dynamic>{
      RestaurantPhotoAttributes.RESTAURANT_PHOTO_ID: restaurantPhotoId,
      RestaurantAttributes.RESTAURANT_ID: restaurant?.restaurantId,
      PhotoAttributes.PHOTO_ID: photo?.photoId,
    };
  }


  factory RestaurantPhoto.fromMap(Map<String, dynamic> entity) {
    return RestaurantPhoto(
      restaurantPhotoId: entity[RestaurantPhotoAttributes.RESTAURANT_PHOTO_ID],
      restaurant: Restaurant.fromMap(entity[RestaurantAttributes.RESTAURANT]),
      photo: Photo.fromMap(entity[PhotoAttributes.PHOTO])
    );
  }

  factory RestaurantPhoto.fromMapDao(Map<String, dynamic> entity) {
    return RestaurantPhoto(
      restaurantPhotoId: entity[RestaurantPhotoAttributes.RESTAURANT_PHOTO_ID],
      restaurant: Restaurant.fromMap(entity),
      photo: Photo.fromMap(entity),
    );
  }

  @override
  String get createTableQuery =>
      "CREATE TABLE ${RestaurantPhotoAttributes.RESTAURANT_PHOTO}("
      " ${RestaurantPhotoAttributes.RESTAURANT_PHOTO_ID} INTEGER PRIMARY KEY,"
      " ${RestaurantAttributes.RESTAURANT_ID} INTEGER,"
      " ${PhotoAttributes.PHOTO_ID} INTEGER,"
      " FOREIGN KEY (${RestaurantAttributes.RESTAURANT_ID}) REFERENCES ${RestaurantAttributes.RESTAURANT} (${RestaurantAttributes.RESTAURANT_ID}) ON DELETE NO ACTION ON UPDATE NO ACTION,"
      " FOREIGN KEY (${PhotoAttributes.PHOTO_ID}) REFERENCES ${PhotoAttributes.PHOTO} (${PhotoAttributes.PHOTO_ID}) ON DELETE NO ACTION ON UPDATE NO ACTION"
      " )";

  @override
  List<RestaurantPhoto> fromList(List<Map<String, dynamic>> entities) {
    List<RestaurantPhoto> entityList = [];
    for (Map<String, dynamic> map in entities) {
      entityList.add(RestaurantPhoto.fromMap(map));
    }
    return entityList;
  }
}

class RestaurantPhotoAttributes {
  static String RESTAURANT_PHOTO = 'restaurantPhoto';
  static String RESTAURANT_PHOTO_ID = 'restaurantPhotoId';
}
