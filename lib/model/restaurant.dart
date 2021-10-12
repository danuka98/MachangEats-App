// To parse this JSON data, do
//
//     final restaurantClass = restaurantClassFromJson(jsonString);

import 'dart:convert';

RestaurantClass restaurantClassFromJson(String str) => RestaurantClass.fromJson(json.decode(str));

String restaurantClassToJson(RestaurantClass data) => json.encode(data.toJson());

class RestaurantClass {
  RestaurantClass({
    required this.success,
    required this.restaurants,
  });

  bool success;
  List<Restaurant> restaurants;

  factory RestaurantClass.fromJson(Map<String, dynamic> json) => RestaurantClass(
    success: json["success"],
    restaurants: List<Restaurant>.from(json["Restaurants"].map((x) => Restaurant.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "Restaurants": List<dynamic>.from(restaurants.map((x) => x.toJson())),
  };
}

class Restaurant {
  Restaurant({
    this.id,
    this.restaurantName,
    this.restaurantPhone,
    this.restaurantAddress,
    this.restaurantPickUpRange,
    this.restaurantLogo,
  });

  String? id;
  String? restaurantName;
  String? restaurantPhone;
  String? restaurantAddress;
  String? restaurantPickUpRange;
  String? restaurantLogo;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: json["_id"],
    restaurantName: json["restaurantName"],
    restaurantPhone: json["restaurantPhone"],
    restaurantAddress: json["restaurantAddress"],
    restaurantPickUpRange: json["restaurantPickUpRange"],
    restaurantLogo: json["restaurantLogo"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "restaurantName": restaurantName,
    "restaurantPhone": restaurantPhone,
    "restaurantAddress": restaurantAddress,
    "restaurantPickUpRange": restaurantPickUpRange,
    "restaurantLogo": restaurantLogo,
  };
}
