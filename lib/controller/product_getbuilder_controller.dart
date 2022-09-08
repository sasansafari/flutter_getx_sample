import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductGetBuilderController extends GetxController {
  ProductModel productModel =
      ProductModel(name: "نوشابه", off: "50", price: "500");

  setNewProduct() {
    productModel = ProductModel(name: "نوشمک", price: "10000", off: "20");

    print(productModel.name);
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("onInit");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("onReady");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();

    print("close");
  }
}
