import 'package:get/get.dart';

class Item {
  int id;
  String name;
  String category;
  RxBool
      inWishList; 
  Item(
      {
        required this.id,
      required this.name,
      required this.category,
      required this.inWishList});
}