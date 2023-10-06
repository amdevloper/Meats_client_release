import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'CartModel.dart';
import 'ItemsAfterModel.dart';
import 'ItemsBeforeModel.dart';
import 'objectbox.g.dart';

class ObjectBox {
  ObjectBox();
  late final Store store;
  late final Box<ItemsBeforeModel> beforeItemsBox;
  late final Box<ItemsAfterModel> afterItemsBox;
  late final Box<CartModel> cartItemsBox;


  ObjectBox._create(this.store) {
    beforeItemsBox = Box<ItemsBeforeModel>(store);
    afterItemsBox = Box<ItemsAfterModel>(store);
    cartItemsBox = Box<CartModel>(store);
  }

  static Future<ObjectBox> create() async {
    final docDir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(docDir.path, 'meats'));
    return ObjectBox._create(store);
  }

  void beforItemList(String category, String name, String about, String originalPrice, String discountedProperty, String image) {
    ItemsBeforeModel items = ItemsBeforeModel(
        category: category,
        name: name,
        about: about,
        originalPrice: originalPrice,
        discountPrice: discountedProperty,
        image: image);

    beforeItemsBox.put(items);
    // var getItem = beforeItemsBox.getAll();
    // beforeItemsBox.removeAll();
    //  var getItemValue = beforeItemsBox.getAll();
  }

  Future afterItemList(String category, String name, String about, String originalPrice, String discountedProperty, String image, int numberOfItem, int id) async {
    ItemsAfterModel items = ItemsAfterModel(
        itemId: id,
        category: category,
        name: name,
        about: about,
        originalPrice: originalPrice,
        discountPrice: discountedProperty,
        image: image,
        numberOfItem: numberOfItem);

    afterItemsBox.put(items);
    // var getItem = afterItemsBox.getAll();
    //    afterItemsBox.removeAll();
    // var getItemValue = afterItemsBox.getAll();
  }


  Future removeItem(String category, String name, String about, String originalPrice, String discountedProperty, String image, int numberOfItem,int itemId) async {
    ItemsAfterModel? item = afterItemsBox.get(itemId);
    if(item?.numberOfItem == 1) {
      ItemsAfterModel items = ItemsAfterModel(
          category: category,
          name: name,
          about: about,
          originalPrice: originalPrice,
          discountPrice: discountedProperty,
          image: image,
          numberOfItem: numberOfItem,
          itemId: itemId);

      // afterItemsBox.put(items);
      // var getItem = afterItemsBox.getAll();

      afterItemsBox.remove(itemId);
      print("$afterItemsBox");
    }else {
      await updateItem(
          numberOfItem,
          itemId);
    }
  }


    Future updateItem(int numberOfItem, int itemId) async {

    ItemsAfterModel? item = afterItemsBox.get(itemId);
    ItemsAfterModel items = ItemsAfterModel(
    numberOfItem: numberOfItem,
      name: item!.category,
      category: item.category,
      about: item.about,
      originalPrice: item.originalPrice,
      discountPrice: item.discountPrice,
      image: item.image,
      itemId:  item.itemId,
      id: item.id
    );
    int id = afterItemsBox.put(items);
    print("after printing each object values $id");
  }

  Future<List<ItemsAfterModel>> getItemList() async {
    return afterItemsBox.getAll();
  }
}