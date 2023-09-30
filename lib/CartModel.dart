import 'package:Meats/ItemsAfterModel.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class CartModel {
  @Id()
  int id;
  List? items;
  double totalAmount;
  ItemsAfterModel? itemAfterModel;

  CartModel({
    this.id = 0,
    this.items,
    this.totalAmount = 0.0,
    this.itemAfterModel,
  });
}