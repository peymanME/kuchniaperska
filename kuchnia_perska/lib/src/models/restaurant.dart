
import 'package:custom_flutter_framework/models/dao/dao.dart';

class Restaurant implements Dao<Restaurant> {
  int? restaurantId;
  String? name;
  String? description;

  Restaurant({this.restaurantId, this.name, this.description});

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      RestaurantAttributes.RESTAURANT_ID: restaurantId,
      RestaurantAttributes.NAME: name,
      RestaurantAttributes.DESCRIPTION: description,
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> entity) {
    return Restaurant(
      restaurantId: entity[RestaurantAttributes.RESTAURANT_ID],
      name: entity[RestaurantAttributes.NAME],
      description: entity[RestaurantAttributes.DESCRIPTION]
    );
  }

  @override
  String get createTableQuery =>
      "CREATE TABLE ${RestaurantAttributes.RESTAURANT}(${RestaurantAttributes.RESTAURANT_ID} INTEGER PRIMARY KEY,"
      " ${RestaurantAttributes.NAME} TEXT,"
      " ${RestaurantAttributes.DESCRIPTION} TEXT)";

  @override
  List<Restaurant> fromList(List<Map<String, dynamic>> entities) {
    List<Restaurant> entityList = [];
    for (Map<String, dynamic> map in entities) {
      entityList.add(Restaurant.fromMap(map));
    }
    return entityList;
  }
}

class RestaurantAttributes {
  static String RESTAURANT = 'restaurant';
  static String RESTAURANT_ID = 'restaurantId';
  static String NAME = 'name';
  static String DESCRIPTION = 'description';
}
