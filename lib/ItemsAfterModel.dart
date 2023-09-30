import 'package:objectbox/objectbox.dart';

@Entity()
class ItemsAfterModel {
  @Id()
  int id;
  int itemId;
  String category;
  String name;
  String about;
  String originalPrice;
  String discountPrice;
  String image;
  int numberOfItem;

  ItemsAfterModel({
    this.id = 0,
    this.itemId = 0,
    this.category = '',
    this.name = '',
    this.about = '',
    this.originalPrice = '',
    this.discountPrice = '',
    this.image = '',
    this.numberOfItem = 0,
  });
}