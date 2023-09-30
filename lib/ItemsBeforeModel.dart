import 'package:objectbox/objectbox.dart';

@Entity()
class ItemsBeforeModel {
  @Id()
  int id;
  String category;
  String name;
  String about;
  String originalPrice;
  String discountPrice;
  String image;

  ItemsBeforeModel({
    this.id = 0,
    this.category = '',
    this.name = '',
    this.about = '',
    this.originalPrice = '',
    this.discountPrice = '',
    this.image = '',
  });
}